// 1 este es el punto de entrada de la aplicacion, aqui configuramos la app y definimos que pantalla se muestra al inicio


import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp()); // internamente llama a un widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  //super key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // quita el banner de Debug en la esquina
      debugShowCheckedModeBanner: false,

      // titulo de la aplicacion
      title: 'Mi Portafolio',

      //tema de colores de la app

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ), //themeData

      //pantalla inicial
      home: const HomeScreen(),
    ); //MaterialApp
  }
}