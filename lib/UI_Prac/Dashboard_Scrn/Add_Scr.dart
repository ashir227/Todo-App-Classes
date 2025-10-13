import 'package:flutter/material.dart';

class AddScr extends StatefulWidget {
  const AddScr({super.key});

  @override
  State<AddScr> createState() => _AddScrState();
}

class _AddScrState extends State<AddScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,

        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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

                  Image.asset("lib/assets/logo.png", height: 200, width: 220),
                  SizedBox(width: 10),
                ],
              ),
            ),

            Text("Add New patient"),
          ],
        ),
      ),
    );
  }
}
