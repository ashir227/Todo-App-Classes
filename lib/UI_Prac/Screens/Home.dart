import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          _buildButton(Icons.person_add_alt_1, "Add New Patient"),
          const SizedBox(height: 20),
          _buildButton(Icons.person_remove, "Remove Patient"),
          const SizedBox(height: 20),
          _buildButton(Icons.event_note, "Manage Appointments"),
          const SizedBox(height: 20),
          _buildButton(Icons.list_alt, "View Patients List"),
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, String text) {
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
        onPressed: () {},
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
