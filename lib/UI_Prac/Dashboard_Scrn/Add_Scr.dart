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
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.red,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 9, 131, 55),
                      height: 100,
                      width: 50,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Center(
                      child: Image.asset(
                        "lib/assets/logo.png",
                        height: 200,
                        width: 220,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Text("Add New patient"),
          ],
        ),
      ),
    );
  }
}
