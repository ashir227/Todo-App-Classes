import 'package:flutter/material.dart';
import 'package:todo_app/UI_Prac/Dashboard_Scrn/Add_Scr.dart';
import 'package:todo_app/UI_Prac/Dashboard_Scrn/mng_apt.dart';
import 'package:todo_app/UI_Prac/Dashboard_Scrn/patnt_lst.dart';
import 'package:todo_app/UI_Prac/Dashboard_Scrn/remv_Scr.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Admin Dashboard",
            style: TextStyle(
              fontSize: 40,
              color: Colors.yellow,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Manage patients and appointments",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 20),
          Image.asset("lib/assets/doctor.png", height: 180),
          const SizedBox(height: 30),
          _buildButton(Icons.person_add_alt_1, "Add New Patient", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddScr()),
            );
          }),

          const SizedBox(height: 20),
          _buildButton(Icons.person_remove, "Remove Patient", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => removescr()),
            );
          }),

          const SizedBox(height: 20),
          _buildButton(Icons.event_note, "Manage Appointments", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mang_apit()),
            );
          }),

          const SizedBox(height: 20),
          _buildButton(Icons.list_alt, "View Patients List", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PatientListScreen(Add_patient: []),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, String text, VoidCallback onPressed) {
    return SizedBox(
      width: 320,
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Colors.yellowAccent,
          backgroundColor: const Color.fromARGB(210, 241, 244, 160),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 30),
            const SizedBox(width: 25),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
