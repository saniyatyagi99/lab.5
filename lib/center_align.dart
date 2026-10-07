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
        appBar: AppBar(title: const Text('Alignment')),
        body: Column(
          children: [
            const Center(
              child: Text(
                'Center Text',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                'Left Aligned',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: const Text(
                'Right Aligned',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}