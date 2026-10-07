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
          title: const Text('College Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://picsum.photos/120',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 15),
              const Text(
                'COER UNIVERSITY',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Courses'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}