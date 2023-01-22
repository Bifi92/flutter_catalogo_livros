import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmprestimoModel {
  late String idLivro;
  late String idPessoa;
  late DateTime dataRetirada;
  late DateTime dataDevolucao;

  EmprestimoModel({
    required this.idLivro,
    required this.idPessoa,
    required this.dataRetirada,
    required this.dataDevolucao,
  });

  static mapToObjectList(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    List<EmprestimoModel> response = [];

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in docs) {
      response.add(
        EmprestimoModel(
          idLivro: doc[C_PESSOA_ID],
          idPessoa: doc[C_PESSOA_NOME],
          dataRetirada: doc[C_PESSOA_ENDERECO],
          dataDevolucao: doc[C_PESSOA_TELEFONE],
        ),
      );
    }
    return response;
  }

  static mapToObject(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return EmprestimoModel(
      idLivro: doc[C_PESSOA_ID],
      idPessoa: doc[C_PESSOA_NOME],
      dataRetirada: doc[C_PESSOA_ENDERECO],
      dataDevolucao: doc[C_PESSOA_TELEFONE],
    );
  }

  Map<String, dynamic> toDoc() {
    return {
      C_PESSOA_ID: idLivro,
      C_PESSOA_NOME: idPessoa,
      C_PESSOA_ENDERECO: dataRetirada,
      C_PESSOA_TELEFONE: dataDevolucao,
    };
  }
}
