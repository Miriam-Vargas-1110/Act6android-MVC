import 'package:flutter/material.dart';

class Widget023 extends StatelessWidget {
  const Widget023({Key? key}) : super(key: key);

  static const List<String> listItem = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget023'),
        backgroundColor: Colors.blue, // Color de AppBar
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return Widget023.listItem.where((String item) {
                  return item
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String item) {
                print('the $item was selected');
              },
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
