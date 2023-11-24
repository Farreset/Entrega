import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TAG',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('TAG'),
            ),
            body: const Center(
              child: Image(image: AssetImage('../image/background.png')),
            )

        )
    );
  }
}

