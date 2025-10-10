import 'package:flutter/material.dart';

class Loginscr extends StatefulWidget {
  const Loginscr({super.key});

  @override
  State<Loginscr> createState() => _LoginscrState();
}

class _LoginscrState extends State<Loginscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: 70),

        width: double.infinity,
        height: 200,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "We are happy to have back",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
