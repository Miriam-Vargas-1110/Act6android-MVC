import 'package:flutter/material.dart';

class Widget030 extends StatelessWidget {
  const Widget030({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget030'),
        backgroundColor: Colors.teal, // Aquí le asignas el color al AppBar
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          myWidget(),
          const SizedBox(height: 20), // Espacio entre el texto y el botón
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior
            },
            child: const Text('Regresar!'),
          ),
        ],
      ),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
