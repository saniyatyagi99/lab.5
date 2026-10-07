import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TermsApp(),
    );
  }
}

class TermsApp extends StatefulWidget {
  @override
  State<TermsApp> createState() => _TermsAppState();
}

class _TermsAppState extends State<TermsApp> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terms and Conditions")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("I agree to the Terms and Conditions"),
              value: isAgreed,
              onChanged: (value) {
                setState(() {
                  isAgreed = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              isAgreed ? "You agreed to the terms." : "Please agree to continue.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}