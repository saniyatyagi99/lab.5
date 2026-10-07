import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> names = [
    "Saniya",
    "Rahul",
    "Priya",
    "Aman",
    "Neha",
    "Rohit",
  ];

  List<String> filteredNames = [];

  @override
  void initState() {
    super.initState();
    filteredNames = names;
  }

  void searchName(String value) {
    setState(() {
      filteredNames = names
          .where((name) =>
          name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Names"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              onChanged: searchName,
              decoration: const InputDecoration(
                labelText: "Search name",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: filteredNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(filteredNames[index]),
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