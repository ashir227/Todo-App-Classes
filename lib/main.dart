import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Entry point of the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: Scaffold(
        appBar: AppBar(title: const Text('Todo App')),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text("aa", style: TextStyle(fontSize: 20));
          },
          itemCount: 25,
          itemExtent: 100,
        ),
      ),
    );
  }
}
