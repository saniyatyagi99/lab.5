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
          title: const Text("Horizontal List"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          children: [
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 10),
              color: Colors.orange,
              child: const Center(child: Text("Apple")),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 10),
              color: Colors.green,
              child: const Center(child: Text("Banana")),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 10),
              color: Colors.pink,
              child: const Center(child: Text("Mango")),
            ),
            Container(
              width: 150,
              color: Colors.purple,
              child: const Center(child: Text("Orange")),
            ),
          ],
        ),
      ),
    );
  }
}