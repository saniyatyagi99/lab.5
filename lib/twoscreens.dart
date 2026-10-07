import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: First()));

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("First Screen")),
    body: Center(
      child: ElevatedButton(
        child: Text("Go to Second"),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => Second())),
      ),
    ),
  );
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Second Screen")),
    body: Center(child: Text("Second Screen")),
  );
}