import 'package:flutter/material.dart';

class Widget029 extends StatefulWidget {
  const Widget029({Key? key}) : super(key: key);

  @override
  State<Widget029> createState() => _Widget029State();
}

class _Widget029State extends State<Widget029> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Bottom Sheet Example'),
        backgroundColor: Color(0xff571ec1), // Personalizar color del AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Botón para abrir el Modal Bottom Sheet
            ElevatedButton(
              child: const Text('Modal Bottom Sheet'),
              onPressed: () {
                // Mostrar Modal Bottom Sheet
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.pop(context); // Cerrar el Modal
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 40), // Más espacio entre los botones
            // Botón para regresar a la pantalla anterior
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Botón "Regresar!"
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
