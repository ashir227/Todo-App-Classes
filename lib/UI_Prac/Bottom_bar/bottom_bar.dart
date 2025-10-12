import 'package:flutter/material.dart';
import 'package:todo_app/UI_Prac/Screens/DashboardScreen.dart';

import 'package:todo_app/UI_Prac/Screens/Records.dart';
import 'package:todo_app/UI_Prac/Screens/Settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _select = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const Records(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_select], // 👈 Switches screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _select,
        onTap: (index) {
          setState(() {
            _select = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 179, 165, 43),
        backgroundColor: const Color.fromARGB(255, 66, 52, 52),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Records"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
