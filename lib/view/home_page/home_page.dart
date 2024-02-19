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
            backgroundImage: AssetImage("assets/guitar/keanu.jpg"),
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
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.purple[800]),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "13.458 \$",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 16,
                    height: 18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/guitar/c-eye.png"),
                      fit: BoxFit.cover,
                    )),
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
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            "Split a purchase",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent events",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
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
                    leading: Container(
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/guitar/nike.jpg"),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    title: Text(
                      "NIKE SHOP",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("17 oct"),
                    trailing: Text(
                      "-62,94 \$",
                      style: TextStyle(fontSize: 15),
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
                    leading: Container(
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/guitar/starb.png"),
                              fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    title: Text(
                      "STARBUCKS",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("17 oct"),
                    trailing: Text(
                      "-6,00 \$",
                      style: TextStyle(fontSize: 15),
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
                    leading: Container(
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/guitar/anna.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    title: Text(
                      "Anna Johnson",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.purple[800]),
                    ),
                    subtitle: Text("17 oct"),
                    trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 3),
                        child: Text(
                          "50,00 \$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
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
                    leading: Container(
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/guitar/savings.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    title: Text(
                      "From SAVINGS",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("3 oct"),
                    trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 3),
                        child: Text(
                          "25,00 \$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
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
                    leading: Container(
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/guitar/mc.png"),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    title: Text(
                      "McDonald's",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("17 oct"),
                    trailing: Text(
                      "-12,37 \$",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mode_comment_outlined,
            color: Colors.grey,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: Colors.grey,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2)),
              ),
              Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
              )
            ],
          ),
          label: "",
        ),
      ]),
    );
  }
}
