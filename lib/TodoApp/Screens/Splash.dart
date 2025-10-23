import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/TodoApp/Screens/DashboardScreen.dart';
import 'package:todo_app/TodoApp/Screens/Login.dart';
import 'package:todo_app/TodoApp/Screens/initscr.dart';

class Splashscr extends StatefulWidget {
  const Splashscr({super.key});

  @override
  State<Splashscr> createState() => _SplashscrState();
}

class _SplashscrState extends State<Splashscr> {
  static const String KEYLOGIN = "login";
  @override
  void initState() {
    super.initState();
    shared();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Image.asset("lib/assets/logo.png", height: 500, width: 300),
        ),
      ),
    );
  }

  void shared() async {
    var shredpr = await SharedPreferences.getInstance();
    var islogedin = shredpr.getBool(KEYLOGIN);
    Timer(Duration(seconds: 5), () {
      if (islogedin != null) {
        if (islogedin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Loginscr()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginscr()),
        );
      }
    });
  }
}
