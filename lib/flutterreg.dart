import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? gender;
  String? course;

  String message = "";

  void register() {
    setState(() {
      message = "Registration Successful";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Gender",
                style: TextStyle(fontSize: 18),
              ),
            ),

            RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),

            RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Course",
                border: OutlineInputBorder(),
              ),
              value: course,
              items: [
                DropdownMenuItem(
                  value: "BCA",
                  child: Text("BCA"),
                ),
                DropdownMenuItem(
                  value: "MCA",
                  child: Text("MCA"),
                ),
                DropdownMenuItem(
                  value: "B.Tech",
                  child: Text("B.Tech"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  course = value;
                });
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: register,
              child: Text("Register"),
            ),

            SizedBox(height: 15),

            Text(
              message,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}