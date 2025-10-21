import 'package:flutter/material.dart';
import 'package:todo_app/model/Pat_class.dart';
import 'package:todo_app/model/patient_data.dart';

class PatientListScreen extends StatelessWidget {
  final List<Patient> allPatients;
  const PatientListScreen({super.key, required this.allPatients});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: allPatients.length,
        itemBuilder: (context, index) {
          final p = allPatients[index];
          return Card(
            borderOnForeground: true,
            color: Colors.black.withOpacity(0.2),
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
