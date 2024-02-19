// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Main Account",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "13.458",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Current balance",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_right_alt_rounded,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                      width: 385,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Split a purchase",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent events",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Image.asset("assets/guitar/gtr_green.jpg"),
                    title: Text("NIKE SHOP"),
                    subtitle: Text("17 oct"),
                    trailing: Text("-62,94"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Image.asset("assets/guitar/gtr_green.jpg"),
                    title: Text("STARBUCKS"),
                    subtitle: Text("17 oct"),
                    trailing: Text("-6,00"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Image.asset("assets/guitar/gtr_green.jpg"),
                    title: Text("Anna Johnson"),
                    subtitle: Text("17 oct"),
                    trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 3),
                        child: Text(
                          "50,00",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Image.asset("assets/guitar/gtr_green.jpg"),
                    title: Text("From SAVINGS"),
                    subtitle: Text("3 oct"),
                    trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 3),
                        child: Text(
                          "25,00",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Recent events",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Image.asset("assets/guitar/gtr_green.jpg"),
                    title: Text("McDonald's"),
                    subtitle: Text("17 oct"),
                    trailing: Text("-12,37"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.black, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.comment_rounded),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_rounded),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          label: "",
        ),
      ]),
    );
  }
}
