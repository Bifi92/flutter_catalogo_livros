import 'package:catalogo_livros/dao/emprestimo.dart';
import 'package:catalogo_livros/models/emprestimo.dart';
import 'package:catalogo_livros/models/livro.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DashboardLivroEmprestadoScreen extends StatelessWidget {
  const DashboardLivroEmprestadoScreen({super.key});

  void onDevolver(EmprestimoModel emprestimo) {
    devolverLivro(emprestimo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(L_CATALOGO_DE_LIVROS_EMPRESTADOS),
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

            return SafeArea(
              child: ListView.builder(
                itemCount: emprestimos.length,
                itemBuilder: (context, index) {
                  return ListTile(
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
