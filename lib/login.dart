import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Login()));

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Login")),
    body: Center(
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home())),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Home")),
    body: Center(child: Text("Welcome Home")),
  );
}