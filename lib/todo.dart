import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:TodoApp/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController mycontrol = TextEditingController();
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
      body: Container(
        height: double.maxFinite,
        width: double.infinity,
        color: const Color.fromARGB(255, 171, 126, 220),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Ashir"),
                    subtitle: Text("MY"),
                    tileColor: const Color.fromARGB(255, 124, 93, 211),
                  );
                },
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star_purple500_sharp),
      ),
    );
  }
}
