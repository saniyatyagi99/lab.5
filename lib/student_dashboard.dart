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
        appBar: AppBar(title: const Text('Student Dashboard')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 45,
                child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 10),
              const Text(
                'Vansh Sharma',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('BCA - 5th Semester'),
              const SizedBox(height: 25),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text('My Courses'),
                  onTap: () {},
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.assignment),
                  title: const Text('Assignments'),
                  onTap: () {},
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text('Results'),
                  onTap: () {},
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}