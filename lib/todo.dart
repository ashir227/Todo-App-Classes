import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:TodoApp/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: "Tech", style: TextStyle(fontSize: 30)),
              TextSpan(text: " Guru", style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
