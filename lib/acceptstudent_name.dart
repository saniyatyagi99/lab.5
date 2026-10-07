import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NameApp(),
    );
  }
}

class NameApp extends StatefulWidget {
  @override
  State<NameApp> createState() => _NameAppState();
}

class _NameAppState extends State<NameApp> {
  TextEditingController nameController = TextEditingController();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Name")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Student Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = nameController.text;
                });
              },
              child: Text("Display"),
            ),
            SizedBox(height: 20),
            Text(
              "Student Name: $name",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}