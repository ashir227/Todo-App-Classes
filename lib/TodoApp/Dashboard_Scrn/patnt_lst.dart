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

bool isload = true;

class _PatientListScreenState extends State<PatientListScreen> {
  //  CrudApi getn = CrudApi();
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
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error : $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isload
          ? CircularProgressIndicator()
          : allPatients.isEmpty
          ? const Center(child: Text("No Patient found"))
          : ListView.builder(
              itemBuilder: (context, index) {
                final pat = allPatients[index];
                return ListTile(
                  title: Text(
                    pat.name,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${pat.dob}\n${pat.gender}\n${pat.num}\n${pat.disease}",
                    style: const TextStyle(color: Colors.white70),
                  ),
                );
              },
            ),
    );
  }
}
