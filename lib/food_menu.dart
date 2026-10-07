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
          title: const Text('Food Menu'),
        ),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.network(
                  'https://picsum.photos/60',
                  width: 60,
                ),
                title: const Text('Pizza'),
                subtitle: const Text('₹250'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Order'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                  'https://picsum.photos/61',
                  width: 60,
                ),
                title: const Text('Burger'),
                subtitle: const Text('₹150'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Order'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.local_drink, size: 50),
                title: const Text('Cold Drink'),
                subtitle: const Text('₹80'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Order'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}