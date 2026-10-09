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
          title: const Text("Student List"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Saniya"),
              subtitle: Text("BCA Student"),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text("Rahul"),
              subtitle: Text("BCA Student"),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.orange),
              title: Text("Priya"),
              subtitle: Text("MCA Student"),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.purple),
              title: Text("Aman"),
              subtitle: Text("B.Tech Student"),
            ),
          ],
        ),
      ),
    );
  }
}