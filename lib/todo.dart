import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List myfile = ["Ashir"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(219, 7, 10, 226),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(130),
                  ),
                ),

                height: 250,
                width: double.infinity,
                child: Column(),
              ),
              Container(
                color: Colors.blueGrey,
                height: 600,
                // padding: EdgeInsets.only(bottom: 200),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Careers Advice"),
                      subtitle: Text("Ashu Baba"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    );
                  },
                ),
              ),
              FloatingActionButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
