import 'package:flutter/material.dart';

class Widget025 extends StatelessWidget {
  const Widget025({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget025'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: ClipRect(
            child: Banner(
              message: "25% off",
              location: BannerLocation.topEnd,
              color: Colors.red,
              child: Container(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Cargar la imagen y manejar posibles errores
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          }
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Text('Error al cargar la imagen');
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Envuelvo el texto en Expanded para evitar overflow
                          Expanded(
                            child: const Text(
                              'Flutter course (Beginners)',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              overflow: TextOverflow
                                  .ellipsis, // Añadí para manejar el desbordamiento
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orangeAccent),
                            child: const Text('Get now'),
                            onPressed: () {
                              // Acción cuando se presiona el botón
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Espacio entre los botones
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Botón "Regresar!"
                        },
                        child: const Text('Regresar!'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
