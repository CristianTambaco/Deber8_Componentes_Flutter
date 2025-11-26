// 2. el paso 2

// const se maneja en forma de constante

import 'package:flutter/material.dart';
import '../widgets/proyecto_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color de fondo de la pantalla
      backgroundColor: Colors.grey[100],

      //barra superior
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ), //AppBar

      //contenido principal
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Titulo de seccion
            Text(
              'Mis Proyectos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), //TextStyle
            ), //Text

            const SizedBox(height: 16),

            //Aqui va la tarjeta del proyecto
            const ProyectoCard(),

          ],
        ), //Column
      ), //Padding
    ); //Scaffold
  }
}
      









