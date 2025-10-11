import 'package:flutter/material.dart';
import 'package:todo_app/UI%20Prac/Screens/Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              // height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(top: 35),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () {
                      Navigator.pop(context); // 👈 goes back to previous screen
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                children: [
                  Text(
                    "Admin Dashboard",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    "Manage patients and appointments",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    "lib/UI Prac/assets/Gold Icon doctor.png",
                    height: 180,
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 320,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(210, 241, 244, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),

                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 33,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Add New Patient",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
