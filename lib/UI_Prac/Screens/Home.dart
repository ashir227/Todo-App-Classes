import 'package:flutter/material.dart';
import 'package:todo_app/UI_Prac/Screens/Login.dart';

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
              color: Colors.red,
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
                  Image.asset("lib/assets/doctor.png", height: 180),
                ],
              ),
            ),

            SizedBox(
              width: 320,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: Colors.yellowAccent,
                  backgroundColor: const Color.fromARGB(210, 241, 244, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),

                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.person_add_alt_1, color: Colors.black, size: 33),
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
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: Colors.yellowAccent,
                  backgroundColor: const Color.fromARGB(210, 241, 244, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.person_remove, size: 33, color: Colors.black),
                    SizedBox(width: 25),
                    Text(
                      "Remove Patient",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: Colors.yellowAccent,
                  backgroundColor: const Color.fromARGB(210, 241, 244, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.event_note, color: Colors.black, size: 30),
                    SizedBox(width: 25),
                    Text(
                      "Manage Appointments",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: Colors.yellowAccent,
                  backgroundColor: const Color.fromARGB(210, 241, 244, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.list_alt, color: Colors.black, size: 30),
                    SizedBox(width: 25),
                    Text(
                      "View Patients List",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
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
