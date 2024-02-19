// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gitr/view/login/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctr1 = TextEditingController();
    TextEditingController ctr2 = TextEditingController();
    TextEditingController ctr3 = TextEditingController();
    TextEditingController ctr4 = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.amber[600],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 600,
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
                      "CREATE AN ACCOUNT",
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
                                  hintText: "Username",
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
                                  hintText: "email@example.com",
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
                              controller: ctr3,
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
                              height: 20,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              controller: ctr4,
                              decoration: InputDecoration(
                                  hintText: "Confirm Password",
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
                                if (formkey.currentState!.validate()) {
                                  print("Registered Successfully");
                                  Navigator.pop(context);
                                } else {
                                  print("Registration not successfull");
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
                                  "REGISTER",
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
                        Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text("Login"))
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
