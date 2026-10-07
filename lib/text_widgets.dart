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
          title: const Text('Student Details'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: Vansh Sharma'),
              Text('Course: BCA'),
              Text('Semester: 5th'),
              Text('College: COER UNIVERSITY'),
            ],
          ),
        ),
      ),
    );
  }
}