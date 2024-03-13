import 'package:flutter/material.dart';

import 'landing_desktop.dart';
import 'landing_mobile.dart';

// Crear el widget principal 'App' de tipus 'stateful'
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
// L'estat es defineix a la classe 'AppState'
  @override
  AppState createState() => AppState();
}

// Definir l'estat del widget 'App'
class AppState extends State<App> {
  Widget _setLayout(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width >= 600) {
      return const LandingDesktop();
    } else {
      return const LandingMobile();
    }
  }

// Definir el contingut del widget 'App'
  @override
  Widget build(BuildContext context) {
// Farem servir la base 'Material'
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicació Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
// De moment només es veu un text 'Hola App'
      home: _setLayout(context),
    );
  }
}
