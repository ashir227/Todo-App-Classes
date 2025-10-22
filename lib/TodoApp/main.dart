import 'package:flutter/material.dart';
import 'package:todo_app/TodoApp/Screens/Splash.dart';
import 'package:todo_app/TodoApp/Screens/initscr.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splashscr());
  }
}
