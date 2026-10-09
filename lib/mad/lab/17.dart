import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Student {
  String name;
  String rollNo;
  String course;

  Student(this.name, this.rollNo, this.course);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StudentPage(),
    );
  }
}

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  List<Student> students = [
    Student("Saniya", "101", "BCA"),
    Student("Rahul", "102", "BCA"),
    Student("Priya", "103", "MCA"),
  ];

  List<Student> filteredStudents = [];

  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final courseController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredStudents = students;
  }

  void searchStudent(String value) {
    setState(() {
      filteredStudents = students
          .where((student) =>
          student.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void addStudent() {
    if (nameController.text.isNotEmpty &&
        rollController.text.isNotEmpty &&
        courseController.text.isNotEmpty) {
      setState(() {
        students.add(
          Student(
            nameController.text,
            rollController.text,
            courseController.text,
          ),
        );

        filteredStudents = students;

        nameController.clear();
        rollController.clear();
        courseController.clear();
      });
    }
  }

  void deleteStudent(int index) {
    Student student = filteredStudents[index];

    setState(() {
      students.remove(student);
      filteredStudents = students;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Records"),
        backgroundColor: Colors.indigo,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Student Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: rollController,
              decoration: const InputDecoration(
                labelText: "Roll Number",
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: courseController,
              decoration: const InputDecoration(
                labelText: "Course",
                prefixIcon: Icon(Icons.school),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: addStudent,
                icon: const Icon(Icons.add),
                label: const Text("Add Student"),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              onChanged: searchStudent,
              decoration: const InputDecoration(
                labelText: "Search by name",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: filteredStudents.length,
                itemBuilder: (context, index) {
                  Student student = filteredStudents[index];

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(student.name[0]),
                      ),

                      title: Text(
                        student.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        "Roll No: ${student.rollNo}\n"
                            "Course: ${student.course}",
                      ),

                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          deleteStudent(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}