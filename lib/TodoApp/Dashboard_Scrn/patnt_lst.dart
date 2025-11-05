import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/Pat_class.dart';
import 'package:todo_app/model/hospital_model.dart';
import 'package:todo_app/model/patient_data.dart';

class PatientListScreen extends StatefulWidget {
  final List<HospitalModel> allPatients;

  const PatientListScreen({super.key, required this.allPatients});

  @override
  State<PatientListScreen> createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  //  CrudApi getn = CrudApi();
  List<HospitalModel> allPatients = [];
  bool isload = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _loadPatient();
  }

  _loadPatient() async {
    try {
      final data = await CrudApi().get(context);
      setState(() {
        allPatients = data;
        isload = false;
      });
    } catch (e) {
      setState(() {
        isload = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error : $e", style: TextStyle(color: Colors.yellow)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: isload
          ? Center(
              child: CircularProgressIndicator(backgroundColor: Colors.yellow),
            )
          : allPatients.isEmpty
          ? const Center(child: Text("No Patient found"))
          : ListView.builder(
              itemCount: allPatients.length,
              itemBuilder: (context, index) {
                final pat = allPatients[index];
                return Card(
                  color: const Color.fromARGB(255, 169, 163, 75),
                  child: ListTile(
                    title: Text(
                      pat.name,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 43, 41, 21),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      " DOB : ${pat.dob}\n Gender : ${pat.gender}\n Phone : ${pat.num}\n Disease : ${pat.disease}",
                      style: const TextStyle(
                        color: Color.fromARGB(179, 9, 4, 4),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
