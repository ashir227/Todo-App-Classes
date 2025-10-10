import 'dart:math';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: "health",

                style: TextStyle(
                  fontSize: 40,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: "cabal",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login", style: TextStyle(fontSize: 22)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.yellow, width: sqrt1_2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
