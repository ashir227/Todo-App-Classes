import 'package:flutter/material.dart';
import 'package:todo_app/screens/NextScrn.dart';

class aboutus extends StatefulWidget {
  const aboutus({super.key});

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  List Stdinfo = [
    {"name": "Bilal", "course": "Flutter", "sec": "A"},
    {"name": "Ashir", "course": "WEB", "sec": "B"},
    {"name": "Huzaifa", "course": "API", "sec": "C"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), backgroundColor: Colors.red),
      body: Column(
        children: [
          Container(
            height: 500,
            child: ListView.builder(
              itemCount: Stdinfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    onTap: () {},
                    title: Text(Stdinfo[index]['name']),
                    tileColor: Colors.grey,
                  ),
                );
              },
            ),
          ),

          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const NextScr()),
                );
              },
              child: Text("About Us"),
            ),
          ),
        ],
      ),
    );
  }
}
