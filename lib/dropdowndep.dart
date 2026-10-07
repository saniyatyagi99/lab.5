import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DepartmentApp(),
    );
  }
}

class DepartmentApp extends StatefulWidget {
  @override
  State<DepartmentApp> createState() => _DepartmentAppState();
}

class _DepartmentAppState extends State<DepartmentApp> {
  String? department;

  List<String> departments = [
    "Computer Science",
    "Information Technology",
    "Commerce",
    "Management",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Department")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text("Select Department"),
              value: department,
              isExpanded: true,
              items: departments.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  department = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              "Selected Department: ${department ?? "None"}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}