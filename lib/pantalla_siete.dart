import 'package:flutter/material.dart';

class Widget027 extends StatefulWidget {
  const Widget027({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Widget027State();
  }
}

class _Widget027State extends State<Widget027> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget027'),
        backgroundColor: Color(0xffe19a14), // Color del AppBar
      ),
      backgroundColor: Colors.white, // Fondo blanco
      body: SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 500,
          height: double.infinity,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.end, // Coloca los botones abajo
            children: [
              OutlinedButton(
                child: const Text('Click'),
                onPressed: () => setState(() {
                  isShow = true;
                }),
              ),
              if (isShow)
                BlockSemantics(
                  blocking: isShow,
                  child: Card(
                    color: Colors.orangeAccent,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('This is a card'),
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () => setState(() {
                              isShow = false;
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                  height: 20), // Espacio entre el card y el botón "Regresar"
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
