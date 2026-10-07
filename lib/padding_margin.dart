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
        appBar: AppBar(title: const Text('Padding and Margin')),
        body: Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(width: 2),
          ),
          child: const Text(
            'This Text has Padding and Margin',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}