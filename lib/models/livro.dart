import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LivroModel {
  late String id;
  late String nome;
  late String autor;
  late String observacao;

  LivroModel({
    required this.id,
    required this.nome,
    required this.autor,
    required this.observacao,
  });

  static mapToObjectList(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    List<LivroModel> response = [];

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in docs) {
      response.add(mapToObject(doc));
    }
    return response;
  }

  static mapToObject(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return LivroModel(
      id: doc[C_LIVRO_ID],
      nome: doc[C_LIVRO_NOME],
      autor: doc[C_LIVRO_AUTOR],
      observacao: doc[C_LIVRO_OBSERVACAO],
    );
  }

  Map<String, dynamic> toDoc() {
    return {
      C_LIVRO_ID: id,
      C_LIVRO_NOME: nome,
      C_LIVRO_AUTOR: autor,
      C_LIVRO_OBSERVACAO: observacao,
    };
  }
}
