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
          title: const Text('Different Icons'),
        ),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 50,
              ),
              Icon(
                Icons.favorite,
                size: 50,
              ),
              Icon(
                Icons.star,
                size: 50,
              ),
              Icon(
                Icons.person,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}