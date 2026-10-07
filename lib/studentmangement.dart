import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Management',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Management'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 90,
              color: Colors.indigo,
            ),

            SizedBox(height: 15),

            Text(
              'Student Management System',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentProfileScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.person),
                label: Text(
                  'Student Profile',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AttendanceScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.calendar_month),
                label: Text(
                  'Attendance',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.assessment),
                label: Text(
                  'Result',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
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
                  'Saniya Tyagi',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  'Roll No: 101',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 8),

                Text(
                  'Course: BCA',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 8),

                Text(
                  'Year: Final Year',
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

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
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
                Icon(
                  Icons.calendar_month,
                  size: 90,
                  color: Colors.indigo,
                ),

                SizedBox(height: 20),

                Text(
                  'Attendance Details',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Total Classes: 100',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Present: 85',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Attendance: 85%',
                  style: TextStyle(
                    fontSize: 20,
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

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
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
                Icon(
                  Icons.emoji_events,
                  size: 90,
                  color: Colors.indigo,
                ),

                SizedBox(height: 20),

                Text(
                  'Student Result',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Name: Saniya Tyagi',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Course: BCA',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Percentage: 92%',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  'Grade: A+',
                  style: TextStyle(
                    fontSize: 20,
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