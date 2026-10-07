import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'This is a Container',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}