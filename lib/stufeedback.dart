import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  String? rating;
  String message = "";

  void submitFeedback() {
    setState(() {
      message = "Feedback Submitted Successfully";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Feedback"),
      ),
      body: Padding(
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

            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Rate the Course",
                style: TextStyle(fontSize: 18),
              ),
            ),

            RadioListTile(
              title: Text("Excellent"),
              value: "Excellent",
              groupValue: rating,
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),

            RadioListTile(
              title: Text("Good"),
              value: "Good",
              groupValue: rating,
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),

            RadioListTile(
              title: Text("Average"),
              value: "Average",
              groupValue: rating,
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),

            TextField(
              controller: feedbackController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Enter Feedback",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: submitFeedback,
              child: Text("Submit"),
            ),

            SizedBox(height: 15),

            Text(
              message,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}