import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOLA MAGICA',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('BOLA MAGICA'),
        ),
        body: Center(
          child: MagicBall(),
        ),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int random = 1;

  void generateRandomNumber() {
    final newRandom = Random().nextInt(5) + 1; // que los numeros sean random del 1 al 5
    setState(() {
      random = newRandom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell( // Area rectagular que responde a los toques
      onTap: () {
        generateRandomNumber(); // funcion que randomiza el numero
        print('Numero de foto es $random');
      },
      child: Image.asset(
        '../image/ball$random.png', // Ajusta la ruta según tu estructura de carpetas
        width: 1200,
        height: 1200,
      ),
    );
  }
}