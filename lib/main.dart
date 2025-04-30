import 'package:flutter/material.dart';
import 'package:act6_mvc/pantallainicial.dart';
import 'package:act6_mvc/pantalla_uno.dart';
import 'package:act6_mvc/pantalla_dos.dart';
import 'package:act6_mvc/pantalla_tres.dart';
import 'package:act6_mvc/pantalla_cuatro.dart';
import 'package:act6_mvc/pantalla_cinco.dart';
import 'package:act6_mvc/pantalla_seis.dart';
import 'package:act6_mvc/pantalla_siete.dart';
import 'package:act6_mvc/pantalla_ocho.dart';
import 'package:act6_mvc/pantalla_9.dart';
import 'package:act6_mvc/pantalla_10.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Pantalla0(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Widget021': (context) => const Widget021(),
        '/Widget022': (context) => const Widget022(),
        '/Widget023': (context) => const Widget023(),
        '/Widget024': (context) => const Widget024(),
        '/Widget025': (context) => const Widget025(),
        '/Widget026': (context) => const Widget026(),
        '/Widget027': (context) => const Widget027(),
        '/Widget028': (context) => const Widget028(),
        '/Widget029': (context) => const Widget029(),
        '/Widget030': (context) => const Widget030(),
      },
    );
  }
}
