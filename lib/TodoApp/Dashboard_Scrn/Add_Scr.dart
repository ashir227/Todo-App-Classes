import 'dart:async';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/patient_data.dart';

import 'package:flutter/material.dart';
import 'package:todo_app/TodoApp/Dashboard_Scrn/patnt_lst.dart';
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
  final CrudApi api = CrudApi();
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
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
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
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.black.withOpacity(
                                    0.8,
                                  ),
                                  duration: const Duration(seconds: 2),
                                  content: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: const Color.fromARGB(
                                          255,
                                          237,
                                          91,
                                          46,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Please Add All Rquired Fields",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            237,
                                            91,
                                            46,
                                          ),
                                          fontSize: 16.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                              return;
                            }
                            final new_pat = Patient(
                              name: nameController.text,
                              dob: dobController.text,
                              gender: genderController.text,
                              num: int.tryParse(contactController.text) ?? 0,
                              disease: diseaseController.text,
                            );
                            setState(() {
                              allPatients.add(new_pat);
                            });

                            nameController.clear();
                            dobController.clear();
                            genderController.clear();
                            contactController.clear();
                            diseaseController.clear();
                          },

                          child: Text(
                            "Save Patient",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
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
