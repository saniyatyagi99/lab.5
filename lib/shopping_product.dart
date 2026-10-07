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
        appBar: AppBar(title: const Text('Product')),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    'https://picsum.photos/250',
                    width: 250,
                    height: 200,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Smart Watch',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '₹2,999',
                    style: TextStyle(fontSize: 22),
                  ),
                  const Icon(
                    Icons.star,
                    size: 30,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Buy Now'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}