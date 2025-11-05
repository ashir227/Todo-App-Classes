import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo_app/model/Pat_class.dart';
import 'package:todo_app/model/hospital_model.dart';
import 'package:todo_app/model/patient_data.dart';
import 'package:http/http.dart' as http;

class CrudApi {
  final String baseurl = "https://6906f7e2b1879c890ed87299.mockapi.io/users";
  get(BuildContext context) async {
    try {
      var url = Uri.parse(baseurl);
      var res = await http.get(url);

      if (res.statusCode == 200) {
        final List<dynamic> data = (jsonDecode(res.body));
        return data.map((e) => HospitalModel.fromJson(e)).toList();
      } else {
        throw Exception("Failed to Fetch :${res.statusCode}");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
      return [];
    }
  }

  post(
    String name,
    int dob,
    String gender,
    int contact,
    String disease,
    BuildContext context,
  ) async {
    try {
      var url = Uri.parse(baseurl);
      var res = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": name,
          "dob": dob,
          "gender": gender,
          "contact": contact,
          "disease": disease,
        }),
      );
      if (res.statusCode == 201 || res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.black.withOpacity(0.8),
            duration: const Duration(seconds: 2),
            content: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellowAccent),
                const SizedBox(width: 10),
                Text(
                  "Patient Successfully Added!",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 16.5),
                ),
              ],
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("${res.statusCode}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  put(
    BuildContext context,
    String name,
    int dob,
    int contact,
    String gender,
    String disease,
    String id,
  ) async {
    try {
      var url = Uri.parse('$baseurl/$id');
      var res = await http.put(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": name,
          "gender": gender,
          "dob": dob,
          "contact": contact,
          "disease": disease,
        }),
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black.withOpacity(0.8),
          duration: const Duration(seconds: 2),
          content: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.yellowAccent),
              const SizedBox(width: 10),
              Text(
                "Patient Successfully Updated!",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 16.5),
              ),
            ],
          ),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("${res.statusCode}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  delete(String id, BuildContext context) async {
    try {
      var url = Uri.parse('$baseurl/$id');
      var res = await http.delete(url);
      if (res.statusCode == 204 || res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.black.withOpacity(0.8),
            duration: const Duration(seconds: 2),
            content: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellowAccent),
                const SizedBox(width: 10),
                Text(
                  "Patient Successfully Deleted!",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 16.5),
                ),
              ],
            ),
          ),
        );
      } else {
        throw Exception("Patient doesnt delete:${res.statusCode}");
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error occured :$e")));
    }
  }
}
