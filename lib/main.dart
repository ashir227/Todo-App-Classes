import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Entry point of the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      "Ashir",
      "Bilal,",
      "Mehmood",
      "Faisal",
      "Moon",
      "Anas",
      "daniyal",
      "Mohsin",
      "umar",
      "Noman",
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
          backgroundColor: Colors.grey,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              padding: EdgeInsets.only(bottom: -0),
              margin: EdgeInsets.only(bottom: 12),
              child: Text(data[index], style: TextStyle(fontSize: 20)),
              // color: Colors.yellow,
              height: 20,
            );
          },
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return Divider(height: 100, thickness: 4);
          },
        ),
      ),
    );
  }
}
