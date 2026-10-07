import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ButtonExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Different Buttons"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Elevated Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text("Submit"),
            ),

            SizedBox(height: 15),

            // Text Button
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              child: Text("Login"),
            ),

            SizedBox(height: 15),

            // Outlined Button
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange,
              ),
              child: Text("Next"),
            ),

            SizedBox(height: 15),

            // Icon Button
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.red,
              iconSize: 35,
            ),

            SizedBox(height: 15),

            // Filled Button
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: Text("Save"),
            ),

            SizedBox(height: 15),

            // Elevated Button with Icon
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.download),
              label: Text("Download"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}