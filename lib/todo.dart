import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List animal = [
      "Dog",
      "Cat",
      "Cow",
      "Buffalow",
      "Fish",
      "Camel",
      "Fox",
      "snake",
      "Camel",
      "Fox",
      "snake",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TODOOO App"),
          backgroundColor: const Color.fromARGB(255, 70, 244, 54),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(height: 2);
          },
          itemCount: animal.length,
          itemBuilder: (context, int index) {
            return Container(height: 70, child: Text(animal[index]));
          },
        ),
      ),
    );
  }
}
