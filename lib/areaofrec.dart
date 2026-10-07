import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RectangleApp(),
    );
  }
}

class RectangleApp extends StatefulWidget {
  @override
  State<RectangleApp> createState() => _RectangleAppState();
}

class _RectangleAppState extends State<RectangleApp> {
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();

  String result = "";

  void calculateArea() {
    double length = double.tryParse(lengthController.text) ?? 0;
    double width = double.tryParse(widthController.text) ?? 0;

    double area = length * width;

    setState(() {
      result = "Area of Rectangle = $area";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rectangle Area")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: lengthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Length",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: widthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Width",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
              child: Text("Calculate Area"),
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