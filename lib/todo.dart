import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoApp> {
  List<Map<String, dynamic>> myfile = [];
  TextEditingController mycon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildListView(),
      bottomNavigationBar: buildFooter(context),
    );
  }

  // 🔷 App Bar
  AppBar buildAppBar() {
    return AppBar(title: Text("Todo"), centerTitle: true);
  }

  // 🔷 ListView for showing todo items
  Widget buildListView() {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 100),
      itemCount: myfile.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            myfile[index]["title"],
            style: TextStyle(
              decoration: myfile[index]["done"]
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              toggleDone(index);
            },
            icon: Icon(
              myfile[index]["done"]
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
            ),
          ),
        );
      },
    );
  }

  // 🔷 Footer: TextField + Add Button
  Widget buildFooter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 12,
        left: 10,
        right: 10,
        top: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: mycon,
              decoration: InputDecoration(
                hintText: "Enter task...",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            mini: true,
            onPressed: addTodoItem,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  // 🔷 Logic: Add new todo
  void addTodoItem() {
    if (mycon.text.isNotEmpty) {
      setState(() {
        myfile.add({"title": mycon.text, "done": false});
        mycon.clear();
      });
    }
  }

  // 🔷 Logic: Toggle checkbox
  void toggleDone(int index) {
    setState(() {
      myfile[index]["done"] = !myfile[index]["done"];
    });
  }
}
