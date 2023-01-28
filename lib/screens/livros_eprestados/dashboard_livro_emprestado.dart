import 'package:catalogo_livros/dao/emprestimo.dart';
import 'package:catalogo_livros/dao/livro.dart';
import 'package:catalogo_livros/models/emprestimo.dart';
import 'package:catalogo_livros/models/livro.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DashboardLivroEmprestadoScreen extends StatelessWidget {
  const DashboardLivroEmprestadoScreen({super.key});

  void onDevolver(EmprestimoModel emprestimo) {
    devolverLivro(emprestimo.idLivro);
    deletarEmprestimo(emprestimo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(L_CATALOGO_DE_LIVROS_EMPRESTADOS),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  R_DASHBOARD_BUSCAR_LIVRO_EMPRESTADO,
                );
              },
              child: const Icon(Icons.search)),
        ],
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: getLivrosEmprestados(),
        initialData: null,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text(L_NENHUM_LIVRO_ENCONTRADO),
            );
          } else {
            final List<EmprestimoModel> emprestimos =
                EmprestimoModel.mapToObjectList(snapshot.data!.docs);

            DateTime dataAtual = DateTime.now();

            return SafeArea(
              child: ListView.builder(
                itemCount: emprestimos.length,
                itemBuilder: (context, index) {
                  bool faltaUmaSemana = emprestimos
                      .elementAt(index)
                      .dataDevolucao
                      .isBefore(dataAtual.add(const Duration(days: 7)));

                  bool atrasado = emprestimos
                      .elementAt(index)
                      .dataDevolucao
                      .isBefore(dataAtual);

                  bool alteraCor = faltaUmaSemana || atrasado;

                  Color corTexto = Colors.black;

                  if (faltaUmaSemana) {
                    corTexto = Colors.yellow.shade800;
                  }

                  if (atrasado) {
                    corTexto = Colors.red;
                  }

                  return ListTile(
                    textColor: alteraCor ? corTexto : null,
                    title: Text(
                        '$L_LIVRO: ${emprestimos.elementAt(index).nomeLivro}'),
                    subtitle: Text(
                        '$L_PESSOA: ${emprestimos.elementAt(index).nomePessoa}'),
                    leading: SizedBox(
                      height: 100,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          onDevolver(emprestimos.elementAt(index));
                        },
                        child: const Text(L_DEVOLVER),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        R_DETALHE_LIVRO_EMPRESTADO,
                        arguments: emprestimos.elementAt(index),
                      );
                    },
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
