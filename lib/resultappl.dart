import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mark1Controller = TextEditingController();
  TextEditingController mark2Controller = TextEditingController();
  TextEditingController mark3Controller = TextEditingController();

  String result = "";

  void calculateResult() {
    String name = nameController.text;

    double mark1 = double.tryParse(mark1Controller.text) ?? 0;
    double mark2 = double.tryParse(mark2Controller.text) ?? 0;
    double mark3 = double.tryParse(mark3Controller.text) ?? 0;

    double total = mark1 + mark2 + mark3;
    double percentage = (total / 300) * 100;

    String status;

    if (mark1 >= 33 && mark2 >= 33 && mark3 >= 33) {
      status = "PASS";
    } else {
      status = "FAIL";
    }

    setState(() {
      result =
      "Student Name: $name\n"
          "Total Marks: $total / 300\n"
          "Percentage: ${percentage.toStringAsFixed(2)}%\n"
          "Result: $status";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Result"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Student Name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: mark1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Subject 1 Marks",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: mark2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Subject 2 Marks",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: mark3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Subject 3 Marks",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: calculateResult,
              child: Text("Calculate Result"),
            ),

            SizedBox(height: 20),

            Text(
              result,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}