import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/hospital_model.dart';
import 'package:todo_app/model/patient_data.dart';

class removescr extends StatefulWidget {
  const removescr({super.key});

  @override
  State<removescr> createState() => _removescrState();
}

class _removescrState extends State<removescr> {
  List<HospitalModel> allPatients = [];
  bool isload = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadPatient();
  }

  Future<void> _deletePatient(String? id) async {
    if (id == null) return;

    final success = await CrudApi().delete(id, context);

    if (success) {
      // ✅ Update the list immediately
      setState(() {
        allPatients.removeWhere((patient) => patient.id == id);
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Deleted successfully!")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Failed to delete")));
    }
  }

  _loadPatient() async {
    final data = await CrudApi().get(context);
    try {
      setState(() {
        allPatients = data;
        isload = false;
      });
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: (Text("$e", style: TextStyle(color: Colors.yellow))),
          ),
        );
      });
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
          : allPatients.isEmpty
          ? Center(
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
                      style: const TextStyle(
                        color: Color.fromARGB(255, 43, 41, 21),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      " DOB : ${pat.dob}\n Gender : ${pat.gender}\n contact : ${pat.contact}\n Disease : ${pat.disease}",
                      style: const TextStyle(
                        color: Color.fromARGB(179, 9, 4, 4),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () async {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Delete Patient"),
                            content: const Text(
                              "Are you sure you want to delete this record?",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text("Cancel"),
                              ),
                              ElevatedButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text("Delete"),
                              ),
                            ],
                          ),
                        );

                        if (confirm == true) {
                          await CrudApi().delete(pat.id ?? '', context);
                          setState(() {
                            allPatients.removeAt(index);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Patient deleted successfully"),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
