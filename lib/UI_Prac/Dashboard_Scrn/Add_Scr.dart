import 'package:flutter/material.dart';

class AddScr extends StatefulWidget {
  const AddScr({super.key});

  @override
  State<AddScr> createState() => _AddScrState();
}

class _AddScrState extends State<AddScr> {
  TextEditingController add = TextEditingController();
  List Addme = [];
  FocusNode _namenode = FocusNode();
  final FocusNode _dobNode = FocusNode();
  final FocusNode _genderNode = FocusNode();
  final FocusNode _contactNode = FocusNode();
  final FocusNode _diseaseNode = FocusNode();

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
            Column(
              children: [
                newMethod(Icons.person_2_outlined, "Patient Name", _namenode),
                SizedBox(height: 20),
                newMethod(
                  Icons.calendar_month_outlined,
                  "Date of Birth",
                  _dobNode,
                ),
                SizedBox(height: 20),
                newMethod(Icons.male_outlined, "Gender", _genderNode),
                SizedBox(height: 20),
                newMethod(Icons.phone, "Contact Number", _contactNode),
                SizedBox(height: 20),
                newMethod(
                  Icons.message_outlined,
                  "Disease / Remarks",
                  _diseaseNode,
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(210, 227, 230, 150),
                  ),
                  onPressed: () {
                    setState(() {
                      Addme.add(add.text);
                    });
                  },
                  child: Text(
                    "Save Patient",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField newMethod(IconData icon, String text1, FocusNode focusNode) {
    return TextField(
      cursorColor: Colors.yellow,

      cursorHeight: 20,
      showCursor: true,
      controller: add,
      focusNode: focusNode,
      style: TextStyle(color: Colors.yellow),
      decoration: InputDecoration(
        labelText: text1,
        labelStyle: TextStyle(color: Colors.yellow),
        prefixIcon: Icon(icon, color: Colors.yellow),
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
