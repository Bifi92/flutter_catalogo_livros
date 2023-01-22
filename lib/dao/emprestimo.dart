import 'package:catalogo_livros/models/emprestimo.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<void> salvarEmprestimo(EmprestimoModel emprestimo) async {
  final emprestimoId = _firestore.collection(C_EMPRESTIMO).doc().id;

  _firestore.collection(C_EMPRESTIMO).add({
    C_EMPRESTIMO_ID: emprestimoId,
    C_EMPRESTIMO_LIVRO_ID: emprestimo.idLivro,
    C_EMPRESTIMO_PESSOA_ID: emprestimo.idPessoa,
    C_EMPRESTIMO_DATA_RETIRADA: emprestimo.dataRetirada,
    C_EMPRESTIMO_DATA_DEVOLUCAO: emprestimo.dataDevolucao,
  });
}
