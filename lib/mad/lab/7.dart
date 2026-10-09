import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Icon Grid"),
          backgroundColor: Colors.deepPurple,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: const [
            Icon(Icons.home, size: 60, color: Colors.blue),
            Icon(Icons.person, size: 60, color: Colors.green),
            Icon(Icons.favorite, size: 60, color: Colors.red),
            Icon(Icons.settings, size: 60, color: Colors.orange),
            Icon(Icons.phone, size: 60, color: Colors.purple),
            Icon(Icons.email, size: 60, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}