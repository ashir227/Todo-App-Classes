import 'package:flutter/material.dart';

class AddScr extends StatefulWidget {
  const AddScr({super.key});

  @override
  State<AddScr> createState() => _AddScrState();
}

class _AddScrState extends State<AddScr> {
  FocusNode _namenode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 13),
        color: Colors.black,

        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 32),
              // color: Colors.red,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  Image.asset("lib/assets/logo.png", height: 180, width: 200),
                  SizedBox(width: 17),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Add ",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "New ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextSpan(
                        text: "Patients",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Enter patient details",
                  style: TextStyle(color: Colors.white, fontSize: 18.5),
                ),
              ],
            ),
            SizedBox(height: 70),
            Column(children: [newMethod(), newMethod(), newMethod()]),
          ],
        ),
      ),
    );
  }

  TextField newMethod() {
    return TextField(
      focusNode: _namenode,
      style: TextStyle(color: Colors.yellow),
      decoration: InputDecoration(
        labelText: "Patient Name",
        labelStyle: TextStyle(color: Colors.yellow),
        prefixIcon: Icon(Icons.person_2_outlined, color: Colors.yellow),
        prefixStyle: TextStyle(color: Colors.yellow),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
