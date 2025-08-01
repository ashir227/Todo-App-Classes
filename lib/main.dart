import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Text(
              "One ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "One ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "One ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "One ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
