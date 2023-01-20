// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBgVADIqA12iYIb6PZgtu0IttmgQn3BOjM',
    appId: '1:1012426017187:web:8ab3628453c460d76ab216',
    messagingSenderId: '1012426017187',
    projectId: 'catalogo-de-livros-d8b7e',
    authDomain: 'catalogo-de-livros-d8b7e.firebaseapp.com',
    storageBucket: 'catalogo-de-livros-d8b7e.appspot.com',
    measurementId: 'G-W0RV45YW6J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClVeDv-6i89tcx6HFErjQYmoIHhCUNwUE',
    appId: '1:1012426017187:android:12ebfb0da455d3016ab216',
    messagingSenderId: '1012426017187',
    projectId: 'catalogo-de-livros-d8b7e',
    storageBucket: 'catalogo-de-livros-d8b7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAu6A4jfCArwNglxXMF6iNtxsy84grFRpA',
    appId: '1:1012426017187:ios:6bcc7ea0a5fb462a6ab216',
    messagingSenderId: '1012426017187',
    projectId: 'catalogo-de-livros-d8b7e',
    storageBucket: 'catalogo-de-livros-d8b7e.appspot.com',
    iosClientId: '1012426017187-r14egdhnhknd0io17io9ncn74it1i5qe.apps.googleusercontent.com',
    iosBundleId: 'com.example.catalogoLivros',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAu6A4jfCArwNglxXMF6iNtxsy84grFRpA',
    appId: '1:1012426017187:ios:6bcc7ea0a5fb462a6ab216',
    messagingSenderId: '1012426017187',
    projectId: 'catalogo-de-livros-d8b7e',
    storageBucket: 'catalogo-de-livros-d8b7e.appspot.com',
    iosClientId: '1012426017187-r14egdhnhknd0io17io9ncn74it1i5qe.apps.googleusercontent.com',
    iosBundleId: 'com.example.catalogoLivros',
  );
}
