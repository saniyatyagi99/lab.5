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
        appBar: AppBar(title: const Text('Calculator')),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: const Text(
                '0',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('7')),
                ElevatedButton(onPressed: () {}, child: const Text('8')),
                ElevatedButton(onPressed: () {}, child: const Text('9')),
                ElevatedButton(onPressed: () {}, child: const Text('/')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('4')),
                ElevatedButton(onPressed: () {}, child: const Text('5')),
                ElevatedButton(onPressed: () {}, child: const Text('6')),
                ElevatedButton(onPressed: () {}, child: const Text('*')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('1')),
                ElevatedButton(onPressed: () {}, child: const Text('2')),
                ElevatedButton(onPressed: () {}, child: const Text('3')),
                ElevatedButton(onPressed: () {}, child: const Text('-')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('0')),
                ElevatedButton(onPressed: () {}, child: const Text('C')),
                ElevatedButton(onPressed: () {}, child: const Text('=')),
                ElevatedButton(onPressed: () {}, child: const Text('+')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}