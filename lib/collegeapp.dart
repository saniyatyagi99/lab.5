import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College App',
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
        title: Text('College App'),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.school,
                    size: 55,
                    color: Colors.white,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'My College',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Courses'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursesScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.people),
              title: Text('Faculty'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FacultyScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 100,
              color: Colors.indigo,
            ),

            SizedBox(height: 20),

            Text(
              'Welcome to My College',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text('Quality Education for a Better Future'),
          ],
        ),
      ),
    );
  }
}

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.computer),
              title: Text('BCA'),
              subtitle: Text('Bachelor of Computer Applications'),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.business),
              title: Text('BBA'),
              subtitle: Text('Bachelor of Business Administration'),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text('B.Sc'),
              subtitle: Text('Bachelor of Science'),
            ),
          ),
        ],
      ),
    );
  }
}

class FacultyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty'),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Dr. Rahul Sharma'),
              subtitle: Text('Computer Science Department'),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Dr. Priya Singh'),
              subtitle: Text('Management Department'),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.contact_phone,
              size: 90,
              color: Colors.indigo,
            ),

            SizedBox(height: 20),

            Text(
              'Contact College',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            Text('Email: college@example.com'),
            SizedBox(height: 10),
            Text('Phone: +91 9876543210'),
          ],
        ),
      ),
    );
  }
}