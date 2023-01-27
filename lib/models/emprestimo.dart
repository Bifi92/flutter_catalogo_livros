import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmprestimoModel {
  late String id;
  late String idLivro;
  late String idPessoa;
  late String nomeLivro;
  late String nomePessoa;
  late DateTime dataRetirada;
  late DateTime dataDevolucao;

  EmprestimoModel({
    required this.id,
    required this.idLivro,
    required this.idPessoa,
    required this.nomeLivro,
    required this.nomePessoa,
    required this.dataRetirada,
    required this.dataDevolucao,
  });

  static mapToObjectList(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    List<EmprestimoModel> response = [];

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in docs) {
      response.add(queryMapToObject(doc));
    }
    return response;
  }

  static queryMapToObject(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return EmprestimoModel(
      id: doc[C_EMPRESTIMO_ID],
      idLivro: doc[C_EMPRESTIMO_LIVRO_ID],
      idPessoa: doc[C_EMPRESTIMO_PESSOA_ID],
      nomeLivro: doc[C_EMPRESTIMO_LIVRO_NOME],
      nomePessoa: doc[C_EMPRESTIMO_PESSOA_NOME],
      dataRetirada: doc[C_EMPRESTIMO_DATA_RETIRADA].toDate(),
      dataDevolucao: doc[C_EMPRESTIMO_DATA_DEVOLUCAO].toDate(),
    );
  }

  Map<String, dynamic> toDoc() {
    return {
      C_EMPRESTIMO_ID: id,
      C_EMPRESTIMO_LIVRO_ID: idLivro,
      C_EMPRESTIMO_PESSOA_ID: idPessoa,
      C_EMPRESTIMO_LIVRO_NOME: nomeLivro,
      C_EMPRESTIMO_PESSOA_NOME: nomePessoa,
      C_EMPRESTIMO_DATA_RETIRADA: dataRetirada,
      C_EMPRESTIMO_DATA_DEVOLUCAO: dataDevolucao,
    };
  }
}
