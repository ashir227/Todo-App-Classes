import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController mycon = TextEditingController();
  List<Map<String, dynamic>> myfile = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (mycon.text.isNotEmpty) {
            myfile.add({
              "title": mycon.text,
              "done": false,
              "sub title": "Ashu Bhai",
            });
          }
          mycon.clear();
          setState(() {});
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

              Container(
                // color: Colors.blueGrey,
                height: 600,
                // padding: EdgeInsets.only(bottom: 200),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      //i start to this line after namaz
                      title: Text(
                        myfile[index]["title"],
                        style: TextStyle(
                          fontWeight: myfile[index]["done"]
                              ? FontWeight.w700
                              : FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                        myfile[index]["title"],
                        style: TextStyle(
                          decoration: myfile[index]["done"]
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          myfile[index]["done"] = !myfile[index]["done"];
                          setState(() {});
                        },
                        icon: Icon(
                          myfile[index]["done"]
                              ? Icons.check_box
                              : Icons.check_circle_outline,
                        ),
                      ),
                    );
                  },
                  itemCount: myfile.length,
                ),
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: TextField(controller: mycon),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(12),
        child: Text(
          "Made with ❤️ by Ashir",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
