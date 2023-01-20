import 'package:catalogo_livros/screens/cadastrar_livro.dart';
import 'package:catalogo_livros/screens/dashboard.dart';
import 'package:catalogo_livros/screens/editar_livro.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rotas = {
  R_DASHBOARD: (context) => const DashboardScreen(),
  R_CADASTRAR_LIVRO: (context) => const CadastrarLivroScreen(),
  R_EDITAR_LIVRO: (context) => const EditarLivroScreen(),
};
