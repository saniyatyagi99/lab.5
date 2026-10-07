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
        appBar: AppBar(title: const Text('Student Profile')),
        body: Center(
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://picsum.photos/120',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Vansh Sharma',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text('BCA - 5th Semester'),
                const Text('Roll No: 243026335'),
                const Icon(Icons.school, size: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}