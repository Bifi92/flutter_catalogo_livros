import 'package:catalogo_livros/dao/livro.dart';
import 'package:catalogo_livros/models/livro.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(L_CATALOGO_DE_LIVROS),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: getLivros(),
          initialData: null,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text(L_NENHUM_LIVRO_ENCONTRADO),
              );
            } else {
              final List<LivroModel> livros =
                  LivroModel.mapToObjectList(snapshot.data!.docs);

              return SafeArea(
                child: ListView.builder(
                  itemCount: livros.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(livros.elementAt(index).nome),
                      subtitle: Text(livros.elementAt(index).autor),
                      leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Emprestar"),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          R_EDITAR_LIVRO,
                          arguments: livros.elementAt(index),
                        );
                      },
                    );
                  },
                ),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            R_CADASTRAR_LIVRO,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



          /*return ListView.builder(
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text("titulo"),
                subtitle: Text("sub titulo"),
              );
            },
          );*/