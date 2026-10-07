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
          title: const Text('My Profile'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),

              Image.network(
                'https://picsum.photos/120',
                width: 120,
                height: 120,
              ),

              const SizedBox(height: 10),

              const Text(
                'Saniya Tyagi',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                'BCA Student',
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.email, size: 30),
                    const Icon(Icons.phone, size: 30),
                    const Icon(Icons.school, size: 30),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: const [
                      Text('Course: BCA'),
                      Text('Semester: 5th'),
                      Text('College Student'),
                    ],
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text('View Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}