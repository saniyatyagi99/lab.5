import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormApp(),
    );
  }
}

class FormApp extends StatefulWidget {
  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  TextEditingController nameController = TextEditingController();
  String message = "";

  void submitForm() {
    setState(() {
      message = "Submitted: ${nameController.text}";
    });
  }

  void resetForm() {
    setState(() {
      nameController.clear();
      message = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Form")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: submitForm,
                  child: Text("Submit"),
                ),
                ElevatedButton(
                  onPressed: resetForm,
                  child: Text("Reset"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}