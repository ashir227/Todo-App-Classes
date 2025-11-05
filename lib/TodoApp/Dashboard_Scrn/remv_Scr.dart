import 'package:flutter/material.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/patient_data.dart';

class removescr extends StatefulWidget {
  const removescr({super.key});

  @override
  State<removescr> createState() => _removescrState();
}

class _removescrState extends State<removescr> {
  bool isload = true;
  @override
  void initState() {
    // TODO: implement initState
  }
  _loadPatient() async{
    final data = await CrudApi().get(context);
    try {
setState(() {
  allPatients = data;
  isload = false;
});
    } catch (e) {
setState(() {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: (Text("$e",style: TextStyle(color: Colors.white),))))
});

    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
