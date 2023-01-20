import 'package:catalogo_livros/rotas/rota.dart';
import 'package:catalogo_livros/utils/constantes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: L_CATALOGO_DE_LIVROS,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: R_DASHBOARD,
      routes: rotas,
    );
  }
}
