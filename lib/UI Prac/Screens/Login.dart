import 'package:flutter/material.dart';

class Loginscr extends StatefulWidget {
  const Loginscr({super.key});

  @override
  State<Loginscr> createState() => _LoginscrState();
}

class _LoginscrState extends State<Loginscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.only(top: 70),

        width: double.infinity,

        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.blueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 38,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "We are happy to have back",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.yellow,
                              width: 0.7,
                            ),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.yellow),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.yellow),
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.security_outlined,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
