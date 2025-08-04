import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List animal = ["Dog", "Cat"];
  TextEditingController mycontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // bool isfav = true;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: mycontrol,
            decoration: InputDecoration(hintText: "Add animal..."),
            style: TextStyle(color: Colors.white),
          ),
          // backgroundColor: const Color.fromARGB(255, 70, 244, 54),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ListTile(
                title: Text(animal[index]),
                tileColor: Colors.grey,
                trailing: IconButton(
                  onPressed: () {
                    animal.removeAt(index);
                    setState(() {});
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            );
          },
          itemCount: animal.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            animal.add(mycontrol.text); // ✅ Fix is here
            mycontrol.clear(); // optional: clears the input field
            setState(() {});
          },
          child: Text("+", style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
