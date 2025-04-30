import 'package:flutter/material.dart';

class Widget022 extends StatelessWidget {
  const Widget022({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget022'),
        backgroundColor: Color(0xfff32121), // Color de AppBar
      ),
      body: Container(
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
