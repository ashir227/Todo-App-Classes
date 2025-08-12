import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About US Screen")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("About Us"),
      ),
    );
  }
}
