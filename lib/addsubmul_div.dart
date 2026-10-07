import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  String result = "";

  void calculate(String operation) {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;
    double answer = 0;

    if (operation == "+") {
      answer = a + b;
    } else if (operation == "-") {
      answer = a - b;
    } else if (operation == "*") {
      answer = a * b;
    } else if (operation == "/") {
      if (b == 0) {
        setState(() {
          result = "Cannot divide by zero";
        });
        return;
      }
      answer = a / b;
    }

    setState(() {
      result = "Result = $answer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "First Number"),
            ),
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Second Number"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calculate("+"),
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => calculate("-"),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => calculate("*"),
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () => calculate("/"),
                  child: Text("/"),
                ),
              ],
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