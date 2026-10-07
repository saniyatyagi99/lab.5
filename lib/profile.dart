import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  Widget btn(BuildContext c, String t, Widget page) => ElevatedButton(
    child: Text(t),
    onPressed: () => Navigator.push(c,
        MaterialPageRoute(builder: (_) => page)),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Home")),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        btn(context, "Profile", Profile()),
        btn(context, "Settings", Settings()),
      ],
    ),
  );
}

class Profile extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(child: Text("Profile Screen")));
}

class Settings extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(child: Text("Settings Screen")));
}