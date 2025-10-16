import 'package:flutter/material.dart';
import 'package:todo_app/model/Pat_class.dart';

class PatientListScreen extends StatelessWidget {
  final List<Patient> Add_patient;
  const PatientListScreen({super.key, required this.Add_patient});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: Add_patient.length,
        itemBuilder: (context, index) {
          final p = Add_patient[index];
          return Card(
            color: Colors.yellow.withOpacity(0.2),
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
