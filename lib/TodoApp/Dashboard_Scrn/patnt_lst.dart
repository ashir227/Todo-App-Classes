import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/Widgets/no_internet.dart';
import 'package:todo_app/model/Pat_class.dart';
import 'package:todo_app/model/hospital_model.dart';
import 'package:todo_app/model/patient_data.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

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
  bool nointernet = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _loadPatient();
  }

  _loadPatient() async {
    var Isconnection = await Connectivity().checkConnectivity();
    if (Isconnection == ConnectivityResult.none) {
      setState(() {
        nointernet = true;
        isload = false;
      });
    }
    try {
      var data = await CrudApi().get(context);
      setState(() {
        var allPatients = data;
        isload = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error found $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // 👈 custom color
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: isload
          ? Center(
              child: CircularProgressIndicator(backgroundColor: Colors.yellow),
            )
          : nointernet
          ? NoInternetWidget()
          : allPatients.isEmpty
          ? const Center(
              child: Text(
                "No Patient List Found",
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: allPatients.length,
              itemBuilder: (context, index) {
                final pat = allPatients[index];
                return Card(
                  color: const Color.fromARGB(255, 169, 163, 75),
                  child: ListTile(
                    title: Text(
                      pat.name ?? "Unknown",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 43, 41, 21),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      " DOB : ${pat.dob}\n Gender : ${pat.gender}\n Phone : ${pat.contact}\n Disease : ${pat.disease}",
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
