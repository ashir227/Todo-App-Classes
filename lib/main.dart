import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Entry point of the app
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Todo App !", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
