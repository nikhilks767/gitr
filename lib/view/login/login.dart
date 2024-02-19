// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gitr/view/home_page/home_page.dart';
import 'package:gitr/view/register/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var name = "nikhil";
    var pass = "123";
    TextEditingController ctr1 = TextEditingController();
    TextEditingController ctr2 = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.amber[600],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 28),
                    ),
                    SizedBox(height: 10),
                    Form(
                      key: formkey,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              cursorColor: Colors.black,
                              controller: ctr1,
                              decoration: InputDecoration(
                                  hintText: "User Name",
                                  filled: true,
                                  hoverColor: Colors.amber.withOpacity(0.2),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "field is empty";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              controller: ctr2,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  filled: true,
                                  hoverColor: Colors.amber.withOpacity(0.2),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "field is empty";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                formkey.currentState!.validate();
                                if (ctr1.text == name && ctr2.text == pass) {
                                  print("Login Succesfull");
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                } else {
                                  print("Login Not Succesfull");
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.amber[600]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text("Register"))
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
