import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/UI_Prac/Dashboard_Scrn/patnt_lst.dart';
import 'package:todo_app/model/Pat_class.dart';

class AddScr extends StatefulWidget {
  const AddScr({super.key});

  @override
  State<AddScr> createState() => _AddScrState();
}

class _AddScrState extends State<AddScr> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController diseaseController = TextEditingController();

  List Add_patient = [];
  FocusNode _namenode = FocusNode();
  final FocusNode _dobNode = FocusNode();
  final FocusNode _genderNode = FocusNode();
  final FocusNode _contactNode = FocusNode();
  final FocusNode _diseaseNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),

                      Image.asset(
                        "lib/assets/logo.png",
                        height: 180,
                        width: 200,
                      ),
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
                    newMethod(
                      Icons.person_2_outlined,
                      "Patient Name",
                      _namenode,
                      nameController,
                    ),
                    SizedBox(height: 20),
                    newMethod(
                      Icons.calendar_month_outlined,
                      "Date of Birth",
                      _dobNode,
                      dobController,
                    ),
                    SizedBox(height: 20),
                    newMethod(
                      Icons.male_outlined,
                      "Gender",
                      _genderNode,
                      genderController,
                    ),
                    SizedBox(height: 20),
                    newMethod(
                      Icons.phone,
                      "Contact Number",
                      _contactNode,
                      contactController,
                    ),
                    SizedBox(height: 20),
                    newMethod(
                      Icons.message_outlined,
                      "Disease / Remarks",
                      _diseaseNode,
                      diseaseController,
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
                        backgroundColor: const Color.fromARGB(
                          210,
                          227,
                          230,
                          150,
                        ),
                      ),
                      onPressed: () {
                        if (nameController.text.isEmpty ||
                            dobController.text.isEmpty ||
                            genderController.text.isEmpty ||
                            contactController.text.isEmpty ||
                            diseaseController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please fill all required fields',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.5,
                                ),
                              ),
                            ),
                          );
                          return;
                        }
                        final new_pat = Patient(
                          name: nameController.text,
                          dob: double.parse(dobController.text),
                          gender: genderController.text,
                          num: int.parse(contactController.text),
                          disease: diseaseController.text,
                        );
                        setState(() {
                          Add_patient.add(new_pat);
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Patient Sucessfully Added",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 192, 181, 81),
                                fontSize: 16.5,
                              ),
                            ),
                          ),
                        );

                        nameController.clear();
                        dobController.clear();
                        genderController.clear();
                        contactController.clear();
                        diseaseController.clear();
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => pat_list()),
                        // );
                        //
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
        ),
      ),
    );
  }

  TextField newMethod(
    IconData icon,
    String text1,
    FocusNode focusNode,
    TextEditingController controller,
  ) {
    return TextField(
      cursorColor: Colors.yellow,

      cursorHeight: 20,
      showCursor: true,
      controller: controller,
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
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 196, 184, 84),
            width: 2,
          ),
        ),
      ),
    );
  }
}
