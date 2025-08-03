// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp()); // Entry point of the app
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     List data = [
//       "Junaid",
//       "Akram",
//       "Moin",
//       "Memona",
//       "Kirat",
//       "Sania",
//       "Daniyal",
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(102, 127, 184, 4),
//           title: Text(
//             "Todo App !",
//             style: TextStyle(color: const Color.fromARGB(255, 15, 7, 7)),
//           ),
//         ),
//         body: ListView.builder(
//           itemExtent: 100,
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context, int index) {
//             return Container(
//               margin: EdgeInsets.only(bottom: 6),
//               color: Colors.orange,
//               height: 100,
//               child: Text(data[index], style: TextStyle(fontSize: 30)),
//             );
//           },
//           itemCount: data.length,
//         ),
//       ),
//     );
//   }
// }
