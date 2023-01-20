import 'package:catalogo_livros/app.dart';
import 'package:catalogo_livros/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBgVADIqA12iYIb6PZgtu0IttmgQn3BOjM",
        authDomain: "catalogo-de-livros-d8b7e.firebaseapp.com",
        projectId: "catalogo-de-livros-d8b7e",
        storageBucket: "catalogo-de-livros-d8b7e.appspot.com",
        messagingSenderId: "1012426017187",
        appId: "1:1012426017187:web:8ab3628453c460d76ab216",
        measurementId: "G-W0RV45YW6J",
      ),
    );
  }
  runApp(const MyApp());
}
