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
  @override
  Widget build(BuildContext context) {
    // bool isfav = true;
    List animal = [
      "Dog",
      "Cat",
      "Fish",
      "Horse",
      "Zarrafa",
      "Buffalo",
      "Unicorn",
      "Parrot",
      "Sparrow",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TODOOO App"),
          backgroundColor: const Color.fromARGB(255, 70, 244, 54),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ListTile(
                title: Text(animal[index]),
                tileColor: Colors.grey,
              ),
            );
          },
          itemCount: animal.length,
          // separatorBuilder: (context, index) {
          //   return Divider(
          //     height: 50,
          //     thickness: 2,
          //     indent: 6.7,
          //     color: Colors.amber,
          //   );
          // },
        ),
      ),
    );
  }
}
