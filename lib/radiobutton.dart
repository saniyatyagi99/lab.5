import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GenderApp(),
    );
  }
}

class GenderApp extends StatefulWidget {
  @override
  State<GenderApp> createState() => _GenderAppState();
}

class _GenderAppState extends State<GenderApp> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Gender")),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            },
          ),
          RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            },
          ),
          RadioListTile(
            title: Text("Other"),
            value: "Other",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            "Selected Gender: ${gender ?? "None"}",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}