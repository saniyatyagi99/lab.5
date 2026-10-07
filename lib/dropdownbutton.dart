import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SemesterApp(),
    );
  }
}

class SemesterApp extends StatefulWidget {
  @override
  State<SemesterApp> createState() => _SemesterAppState();
}

class _SemesterAppState extends State<SemesterApp> {
  String? semester;

  List<String> semesters = [
    "1st Semester",
    "2nd Semester",
    "3rd Semester",
    "4th Semester",
    "5th Semester",
    "6th Semester",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Semester")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text("Select Semester"),
              value: semester,
              isExpanded: true,
              items: semesters.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  semester = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              "Selected: ${semester ?? "None"}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}