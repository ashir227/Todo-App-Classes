import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_app/UI_Prac/Screens/Login.dart';

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
              // width: double.infinity,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginscr()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 33),
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.yellow, width: sqrt1_2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 330,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(210, 227, 230, 150),
                  side: BorderSide(color: Colors.yellow),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
