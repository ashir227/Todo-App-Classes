import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController mycon = TextEditingController();
  List myfile = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myfile.add(mycon.text);
        },
        child: Text(
          "+",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        ),
      ),
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
              ),

              TextField(),
              Container(
                // color: Colors.blueGrey,
                height: 600,
                // padding: EdgeInsets.only(bottom: 200),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Careers Advice"),
                      subtitle: Text("Ashu Baba"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    );
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
