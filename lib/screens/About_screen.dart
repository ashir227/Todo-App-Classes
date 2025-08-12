import 'package:flutter/material.dart';
import 'package:todo_app/screens/NextScrn.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About US Screen")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const NextScr()),
          );
        },
        child: Text("About Us"),
      ),
    );
  }
}
