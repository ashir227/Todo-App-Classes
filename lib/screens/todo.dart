import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todo_app/screens/About_screen.dart';
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
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const aboutus()),
            );
          },
          icon: Icon(Icons.undo),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 217, 94, 164),

        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(todo[index]["title"] + (index.toString())),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      todo.removeAt(index);
                      setState(() {});
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: ListTile(
                      title: Text(
                        todo[index]["title"],
                        style: TextStyle(
                          decoration: todo[index]["done"]
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                        // tileColor: const Color.fromARGB(255, 146, 122, 210),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
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
                          IconButton(
                            onPressed: () {
                              todo.removeAt(index);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
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
