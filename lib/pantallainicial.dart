import 'package:flutter/material.dart';

class Pantalla0 extends StatelessWidget {
  const Pantalla0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8a60fd), // Fondo morado
        title: const Center(
          // Centra el texto
          child: Text(
            'Pantalla inicial',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget021');
              },
              child: const Text('widget 21'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget022');
              },
              child: const Text('widget 22'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget023');
              },
              child: const Text('widget 23'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget024');
              },
              child: const Text('widget 24'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget025');
              },
              child: const Text('widget 25'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget026');
              },
              child: const Text('widget 26'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget027');
              },
              child: const Text('widget 27'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget028');
              },
              child: const Text('widget 28'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget029');
              },
              child: const Text('widget 29'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Widget030');
              },
              child: const Text('widget 30'),
            ),
          ),
        ],
      ),
    );
  }
}
