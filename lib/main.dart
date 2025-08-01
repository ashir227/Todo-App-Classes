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
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: Scaffold(
        appBar: AppBar(title: const Text('Todo App')),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(data[index], style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
              height: 20,
            );
          },
          itemCount: data.length,
          itemExtent: 100,
        ),
      ),
    );
  }
}
