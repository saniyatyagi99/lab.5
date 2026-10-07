import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Home")),
    body: Center(
      child: ElevatedButton(
        child: Text("About"),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => About())),
      ),
    ),
  );
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("About")),
    body: Center(child: Text("About Screen")),
  );
}