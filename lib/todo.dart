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
    List animal = [];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TODOOO App"),
          backgroundColor: const Color.fromARGB(255, 70, 244, 54),
        ),
        body: ListView.builder(
          : (context, index) {
            return Divider(height: 2);
          },
          itemCount: animal.length,
          itemBuilder: (context, int index) {
            return ListTile(
              title: Text(animal[index]),
            
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
