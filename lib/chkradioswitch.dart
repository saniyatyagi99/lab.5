import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllWidgetsApp(),
    );
  }
}

class AllWidgetsApp extends StatefulWidget {
  @override
  State<AllWidgetsApp> createState() => _AllWidgetsAppState();
}

class _AllWidgetsAppState extends State<AllWidgetsApp> {
  bool agree = false;
  String? gender;
  String? semester;
  bool notification = false;

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
      appBar: AppBar(title: Text("Flutter Widgets")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. Terms and Conditions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            CheckboxListTile(
              title: Text("I Agree"),
              value: agree,
              onChanged: (value) {
                setState(() {
                  agree = value!;
                });
              },
            ),

            Divider(),

            Text(
              "2. Select Gender",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

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

            Divider(),

            Text(
              "3. Select Semester",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

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

            Divider(),

            Text(
              "4. Notifications",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SwitchListTile(
              title: Text(
                notification ? "Notifications ON" : "Notifications OFF",
              ),
              value: notification,
              onChanged: (value) {
                setState(() {
                  notification = value;
                });
              },
            ),

            SizedBox(height: 20),

            Text(
              "Selected Gender: ${gender ?? "None"}\n"
                  "Selected Semester: ${semester ?? "None"}\n"
                  "Terms Accepted: ${agree ? "Yes" : "No"}\n"
                  "Notifications: ${notification ? "ON" : "OFF"}",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}