import 'package:flutter/material.dart';

class ProyectoCard extends StatelessWidget {
  const ProyectoCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ===========================================
    // WIDGET 1: Container
    // Es una "caja" que contiene otros widgets
    // Permite agregar color, bordes, padding, etc.
    // ===========================================
    return Container(
      // Espacio INTERNO (entre el borde y el contenido)
      padding: const EdgeInsets.all(20),

      // Decoración del contenedor
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // Sombra para dar efecto de elevación
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      // ===========================================
      // WIDGET 2: Column
      // Organiza widgets de arriba hacia abajo
      // ===========================================
      child: Column(
        // Alinear contenido a la izquierda
        crossAxisAlignment: CrossAxisAlignment.start,
        // Ajustar altura al contenido (no expandir)
        mainAxisSize: MainAxisSize.min,
        children: [
          // ===========================================
          // WIDGET 3: Text
          // Muestra texto en pantalla
          // ===========================================

          // Dentro del Column, como primer hijo:
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://picsum.photos/400/200', // URL de imagen de prueba
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          // Título del proyecto
          Text(
            'App de Pedido de Comida Rápida', // 
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.purple[800],
            ),
          ),

          const SizedBox(height: 8),

          // Descripción del proyecto
          Text(
            'Aplicación móvil que permite a los usuarios pedir comida rápida, '
            'ver menús, rastrear pedidos en tiempo real y gestionar pagos. '
            'Incluye panel para restaurantes y notificaciones en vivo.',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey[600],
              height: 1.5, // Espacio entre líneas
            ),
          ),

          // Fecha del proyecto
          // Reemplaza el Text de fecha por esto:
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 16,
                color: Colors.grey[500],
              ),
              const SizedBox(width: 4),
              Text(
                'Enero 2024',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Reemplaza el Container de tecnologías por:
          Wrap(
            spacing: 8, // Espacio horizontal entre chips
            runSpacing: 8, // Espacio vertical entre filas
            children: [
              Chip(
                label: const Text('JavaScript'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
              Chip(
                label: const Text('React'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
              Chip(
                label: const Text('Firebase'),
                backgroundColor: Colors.orange[50],
                labelStyle: TextStyle(color: Colors.orange[700], fontSize: 12),
              ),
            ],
          ),

          // Agregar antes del estado
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Progreso: 75%',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.75, // 0.0 a 1.0 (0% a 100%)
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                  minHeight: 8,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Botones de acción
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: () {
                  // Acción al presionar (vacío por ahora)
                  print('Ver código presionado');
                },
                icon: const Icon(Icons.code, size: 18),
                label: const Text('Código'),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: () {
                  print('Ver demo presionado');
                },
                icon: const Icon(Icons.launch, size: 18),
                label: const Text('Demo'),
              ),
            ],
          ),

          // Estado del proyecto
          Text(
            'Estado: Desarrollando.', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 12,
              color: Colors.green[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
