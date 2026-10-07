import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextChangeApp(),
    );
  }
}

class TextChangeApp extends StatefulWidget {
  @override
  State<TextChangeApp> createState() => _TextChangeAppState();
}

class _TextChangeAppState extends State<TextChangeApp> {
  String text = "Hello Student";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Text")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "Welcome to Flutter!";
                });
              },
              child: Text("Change Text"),
            ),
          ],
        ),
      ),
    );
  }
}