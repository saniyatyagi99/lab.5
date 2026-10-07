import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberCheckApp(),
    );
  }
}

class NumberCheckApp extends StatefulWidget {
  @override
  State<NumberCheckApp> createState() => _NumberCheckAppState();
}

class _NumberCheckAppState extends State<NumberCheckApp> {
  TextEditingController numberController = TextEditingController();
  String result = "";

  void checkNumber() {
    double number = double.tryParse(numberController.text) ?? 0;

    setState(() {
      if (number > 0) {
        result = "$number is Positive";
      } else if (number < 0) {
        result = "$number is Negative";
      } else {
        result = "The number is Zero";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number Check")),
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