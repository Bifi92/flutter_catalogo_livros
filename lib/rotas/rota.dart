import 'package:catalogo_livros/screens/livros/cadastrar_livro.dart';
import 'package:catalogo_livros/screens/livros/dashboard_livro.dart';
import 'package:catalogo_livros/screens/livros/editar_livro.dart';
import 'package:catalogo_livros/screens/pessoas/cadastrar_pessoa.dart';
import 'package:catalogo_livros/screens/pessoas/dashboard_pessoa.dart';
import 'package:catalogo_livros/screens/pessoas/editar_pessoa.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rotas = {
  R_DASHBOARD_LIVRO: (context) => const DashboardLivroScreen(),
  R_CADASTRAR_LIVRO: (context) => const CadastrarLivroScreen(),
  R_EDITAR_LIVRO: (context) => const EditarLivroScreen(),
  R_DASHBOARD_PESSOA: (context) => const DashboardPessoaScreen(),
  R_CADASTRAR_PESSOA: (context) => const CadastrarPessoaScreen(),
  R_EDITAR_PESSOA: (context) => const EditarPessoaScreen(),
};
