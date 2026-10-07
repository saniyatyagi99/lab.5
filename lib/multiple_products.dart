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
        appBar: AppBar(title: const Text('Products')),
        body: ListView(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Laptop - ₹50,000',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Mobile - ₹20,000',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Headphones - ₹2,000',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}