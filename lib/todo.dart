import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:TodoApp/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Map<String, dynamic>> todo = [];
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
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 171, 126, 220),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      todo[index]["title"],
                      style: TextStyle(
                        fontWeight: todo[index]["done"]
                            ? FontWeight.w700
                            : FontWeight.w400,
                      ),
                      // tileColor: const Color.fromARGB(255, 146, 122, 210),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        todo[index]["done"] = !todo[index]["done"];
                        setState(() {});
                      },
                      icon: Icon(
                        todo[index]["done"]
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                      ),
                    ),
                  );
                },
                itemCount: todo.length,
              ),
            ),
            Container(
              child: TextField(
                controller: mycontrol,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Text",
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (mycontrol.text.isNotEmpty) {
            todo.add({"title": mycontrol.text, "done": false});
            mycontrol.clear();
            setState(() {});
          }
        },
        child: Icon(Icons.star_purple500_sharp),
      ),
    );
  }
}
