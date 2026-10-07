import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Name Form',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: NameFormScreen(),
    );
  }
}

class NameFormScreen extends StatefulWidget {
  @override
  State<NameFormScreen> createState() => _NameFormScreenState();
}

class _NameFormScreenState extends State<NameFormScreen> {
  final TextEditingController nameController = TextEditingController();

  void submitForm() {
    String name = nameController.text.trim();

    if (name.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayScreen(
            name: name,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_add,
              size: 80,
              color: Colors.teal,
            ),

            SizedBox(height: 20),

            Text(
              'Enter Student Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 25),

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Student Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: submitForm,
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final String name;

  DisplayScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
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
                  Icons.check_circle,
                  size: 80,
                  color: Colors.teal,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 28,
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