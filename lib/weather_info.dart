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
        appBar: AppBar(title: const Text('Weather')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.wb_sunny,
                size: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Dehradun',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '28°C',
                style: TextStyle(fontSize: 45),
              ),
              const Text(
                'Sunny',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 20),
              const Text('Humidity: 60%'),
              const Text('Wind Speed: 12 km/h'),
            ],
          ),
        ),
      ),
    );
  }
}