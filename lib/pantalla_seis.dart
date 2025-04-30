import 'package:flutter/material.dart';

class Widget026 extends StatelessWidget {
  const Widget026({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget026'),
        backgroundColor: Color(0xffc1ff2c), // Cambié el color del AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container con Baseline y FlutterLogo
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              child: const Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(size: 50),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el logo y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla anterior
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
