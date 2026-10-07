import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarksApp(),
    );
  }
}

class MarksApp extends StatefulWidget {
  @override
  State<MarksApp> createState() => _MarksAppState();
}

class _MarksAppState extends State<MarksApp> {
  TextEditingController name = TextEditingController();
  TextEditingController mark1 = TextEditingController();
  TextEditingController mark2 = TextEditingController();
  TextEditingController mark3 = TextEditingController();

  String result = "";

  void calculateTotal() {
    double m1 = double.tryParse(mark1.text) ?? 0;
    double m2 = double.tryParse(mark2.text) ?? 0;
    double m3 = double.tryParse(mark3.text) ?? 0;

    double total = m1 + m2 + m3;

    setState(() {
      result = "Student: ${name.text}\nTotal Marks: $total";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Marks")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(labelText: "Student Name"),
            ),
            TextField(
              controller: mark1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Subject 1 Marks"),
            ),
            TextField(
              controller: mark2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Subject 2 Marks"),
            ),
            TextField(
              controller: mark3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Subject 3 Marks"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateTotal,
              child: Text("Calculate Total"),
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