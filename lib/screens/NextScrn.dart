import 'package:flutter/material.dart';

class NextScr extends StatelessWidget {
  const NextScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NextGen")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Nextscreen"),
      ),
    );
  }
}
