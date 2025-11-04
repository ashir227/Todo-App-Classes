import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/Pat_class.dart';
import 'package:todo_app/model/patient_data.dart';

class PatientListScreen extends StatefulWidget {
  final List<Patient> allPatients;

  const PatientListScreen({super.key, required this.allPatients});

  @override
  State<PatientListScreen> createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  //  CrudApi getn = CrudApi();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _loadPatient();
  }

  _loadPatient() async {
    final data = await CrudApi().get(context);
    allPatients = data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: widget.allPatients.length,
        itemBuilder: (context, index) {
          final p = widget.allPatients[index];
          return Card(
            borderOnForeground: true,
            color: Colors.yellowAccent.withOpacity(0.4),
            child: ListTile(
              title: Text(p.name, style: TextStyle(color: Colors.white)),
              subtitle: Text(
                "DOB : ${p.dob}\nGender: ${p.gender}\nContact : ${p.num}\nDisease/Remarks : ${p.disease}",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          );
        },
      ),
    );
  }
}
