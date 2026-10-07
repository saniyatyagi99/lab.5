import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumApp(),
    );
  }
}

class SumApp extends StatefulWidget {
  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  String result = "";

  void calculateSum() {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;

    setState(() {
      result = "Sum = ${a + b}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sum of Two Numbers")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter First Number",
              ),
            ),
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Second Number",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSum,
              child: Text("Calculate Sum"),
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