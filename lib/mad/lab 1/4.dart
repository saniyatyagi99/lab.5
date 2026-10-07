import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Saniya",
      "Rahul",
      "Priya",
      "Aman",
      "Neha",
      "Rohit",
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Name List"),
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(names[index]),
            );
          },
        ),
      ),
    );
  }
}