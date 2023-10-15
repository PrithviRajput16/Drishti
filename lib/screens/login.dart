// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:her_saarthi/screens/google_maps.dart';

class Login extends StatelessWidget {
  const Login({super.key, required this.changeScreen});

  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    void pressed() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MapSample(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 38, 97),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(40, 150, 40, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                      ),
                    ),
                    // const SizedBox(
                    //   child: ElevatedButton(
                    //     onPressed: null,
                    //     child: Text(
                    //       "Sign In",
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          changeScreen(1);
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Log In with Facebook",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Log In with Google",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
