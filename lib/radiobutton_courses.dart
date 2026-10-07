import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CourseApp(),
    );
  }
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  String? course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Course")),
      body: Column(
        children: [
          RadioListTile(
            title: Text("BCA"),
            value: "BCA",
            groupValue: course,
            onChanged: (value) {
              setState(() {
                course = value;
              });
            },
          ),
          RadioListTile(
            title: Text("MCA"),
            value: "MCA",
            groupValue: course,
            onChanged: (value) {
              setState(() {
                course = value;
              });
            },
          ),
          RadioListTile(
            title: Text("B.Tech"),
            value: "B.Tech",
            groupValue: course,
            onChanged: (value) {
              setState(() {
                course = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            "Selected Course: ${course ?? "None"}",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}