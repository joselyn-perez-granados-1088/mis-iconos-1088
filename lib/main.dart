import 'package:flutter/material.dart';
//JSOELYN PEREZ GRANADOS MAT:22308051281088

void main() {
  runApp(const MisIconoss()); // Agregado const aquí
}

class MisIconoss extends StatelessWidget {
  const MisIconoss({super.key}); // Agregado Key para el constructor const.

  // Lista de colores pasteles
  static const List<Color> pastelColors = [
    Color(0xFFFFB6C1), // Light Pink
    Color(0xFFFFD700), // Pastel Yellow
    Color(0xFF87CEEB), // Sky Blue
    Color(0xFF98FB98), // Pastel Green
    Color(0xFFFFA07A), // Light Salmon
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tienda de Mascotas  -  Joselyn Perez Granados 22308051281088')), // Agregado const aquí
        body: Center( // Eliminado const aquí
          child: Column( // Eliminado const aquí
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildIconWithSubtitle(Icons.pets, 'Alimentos y accesorios', pastelColors[0]),
              _buildIconWithSubtitle(Icons.local_hospital, 'Cuidado y aseo', pastelColors[1]),
              _buildIconWithSubtitle(Icons.toys, 'Juguetes y entretenimiento', pastelColors[2]),
              _buildIconWithSubtitle(Icons.healing, 'Salud y bienestar', pastelColors[3]),
              _buildIconWithSubtitle(Icons.home, 'Adopción y refugio', pastelColors[4]),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir un ícono con subtítulo
  static Widget _buildIconWithSubtitle(IconData iconData, String subtitle, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Icon(iconData, size: 48.0, color: color), // Aplicar color al ícono
          const SizedBox(height: 8.0), // Agregado const aquí
          Text(
            subtitle,
            style: TextStyle(fontSize: 16.0, color: color), // Aplicar color al texto
          ),
        ],
      ),
    );
  }
}