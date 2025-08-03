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
    bool isfav = true;
    List animal = [
      "Dog",
      "Cat",
      "Cow",
      "Buffalow",
      "Fish",
      "Camel",
      "Fox",
      "snake",
      "Camel",
      "Fox",
      "snake",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TODOOO App"),
          backgroundColor: const Color.fromARGB(255, 70, 244, 54),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(height: 2);
          },
          itemCount: animal.length,
          itemBuilder: (context, int index) {
            return ListTile(
              title: Text("Ashir"),
              subtitle: Text("Tech"),
              trailing: IconButton(
                onPressed: () {
                  isfav = !isfav;
                  setState(() {});
                },
                icon: Icon(
                  Icons.add,
                  color: isfav
                      ? const Color.fromARGB(255, 59, 121, 255)
                      : Colors.red,
                ),
              ),
            );
            // Container(
            //   color: Colors.lightBlueAccent,
            //   height: 70,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(animal[index]),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [Text(animal[index])],
            //       ),
            //       Text(animal[index]),
            //     ],
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
