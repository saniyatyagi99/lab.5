import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  String result = "";

  void calculate(String operation) {
    double a = double.tryParse(num1Controller.text) ?? 0;
    double b = double.tryParse(num2Controller.text) ?? 0;

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
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(),
              ),
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
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}