import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent, title: Text("ddd")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Column(children: [
          
          ],
        ),
      ),
    );
  }
}
