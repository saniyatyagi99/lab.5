import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student List',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: StudentListScreen(),
    );
  }
}

class StudentListScreen extends StatelessWidget {
  final List<Map<String, String>> students = [
    {
      'name': 'Saniya Tyagi',
      'course': 'BCA',
      'semester': 'Final Year',
      'roll': '101'
    },
    {
      'name': 'Rahul Sharma',
      'course': 'BCA',
      'semester': 'Final Year',
      'roll': '102'
    },
    {
      'name': 'Priya Singh',
      'course': 'BCA',
      'semester': 'Final Year',
      'roll': '103'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: EdgeInsets.all(12),

              leading: CircleAvatar(
                radius: 28,
                child: Icon(Icons.person),
              ),

              title: Text(
                student['name']!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                '${student['course']} - ${student['semester']}',
              ),

              trailing: Icon(Icons.arrow_forward_ios),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailScreen(
                      student: student,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class StudentDetailScreen extends StatelessWidget {
  final Map<String, String> student;

  StudentDetailScreen({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
        centerTitle: true,
      ),

      body: Center(
        child: Card(
          margin: EdgeInsets.all(25),
          child: Padding(
            padding: EdgeInsets.all(30),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  student['name']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Roll Number: ${student['roll']}',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Course: ${student['course']}',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Semester: ${student['semester']}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}