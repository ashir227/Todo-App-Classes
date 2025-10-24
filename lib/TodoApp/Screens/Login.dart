import 'package:flutter/material.dart';
import 'package:todo_app/TodoApp/Bottom_bar/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/TodoApp/Screens/Splash.dart';

class Loginscr extends StatefulWidget {
  const Loginscr({super.key});

  @override
  State<Loginscr> createState() => _LoginscrState();
}

class _LoginscrState extends State<Loginscr> {
  bool ishide = false;
  bool isHover = false;
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();
  String Correctemail = "ashir@gmail.com";
  String CorrectPass = "ashir123";
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
                        textCapitalization: TextCapitalization.none,
                        style: TextStyle(color: Colors.yellow),
                        controller: emailcon,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.yellow,
                              width: 0.7,
                            ),
                          ),
                          hintText: "Email",
                          hoverColor: Colors.orange,
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
                        style: TextStyle(color: Colors.yellow),
                        controller: passwordcon,

                        obscureText: ishide,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              ishide ? Icons.visibility_off : Icons.visibility,
                              color: Colors.yellow,
                            ),
                            onPressed: () {
                              setState(() {
                                ishide = !ishide;
                              });
                            },
                          ),
                          hintStyle: TextStyle(color: Colors.yellow),
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.security_outlined,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 330,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            210,
                            227,
                            230,
                            150,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () async {
                          if (emailcon.text == Correctemail &&
                              passwordcon.text == CorrectPass) {
                            //IF Sucessfully loggedin
                            var shared = await SharedPreferences.getInstance();
                            await shared.setBool(SplashscrState.KEYLOGIN, true);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Wrong Email or Password"),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 17, color: Colors.black),
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
