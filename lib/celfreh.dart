import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureApp(),
    );
  }
}

class TemperatureApp extends StatefulWidget {
  @override
  State<TemperatureApp> createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  TextEditingController celsiusController = TextEditingController();
  String result = "";

  void convertTemperature() {
    double celsius = double.tryParse(celsiusController.text) ?? 0;

    double fahrenheit = (celsius * 9 / 5) + 32;

    setState(() {
      result = "Fahrenheit = $fahrenheit °F";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Temperature Converter")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Celsius",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertTemperature,
              child: Text("Convert"),
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