import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Addition',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final int number1 = 25;
  final int number2 = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calculate,
              size: 90,
              color: Colors.deepPurple,
            ),

            SizedBox(height: 20),

            Text(
              'Number 1: $number1',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(
              'Number 2: $number2',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 25),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      number1: number1,
                      number2: number2,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.add),
              label: Text(
                'Calculate Sum',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final int number1;
  final int number2;

  SecondScreen({
    required this.number1,
    required this.number2,
  });

  @override
  Widget build(BuildContext context) {
    int sum = number1 + number2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(25),
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.calculate,
                  size: 80,
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 20),
                Text(
                  '$number1 + $number2',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 15),
                Text(
                  'Sum = $sum',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}