import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EvenOddApp(),
    );
  }
}

class EvenOddApp extends StatefulWidget {
  @override
  State<EvenOddApp> createState() => _EvenOddAppState();
}

class _EvenOddAppState extends State<EvenOddApp> {
  TextEditingController numberController = TextEditingController();
  String result = "";

  void checkNumber() {
    int number = int.tryParse(numberController.text) ?? 0;

    setState(() {
      if (number % 2 == 0) {
        result = "$number is Even";
      } else {
        result = "$number is Odd";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Even or Odd")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter a Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkNumber,
              child: Text("Check"),
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}