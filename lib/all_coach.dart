import 'package:flutter/material.dart';
import 'package:project/trainer_card.dart';

import 'nav.dart';

class page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => page3();
}

class page3 extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                    ),
                    SizedBox(width: 50),
                    Text(
                      "All Coaches",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //card_1
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [Row(
                    children: [
                      trainerCard(),
                      SizedBox(width:12),
                      trainerCard(),
                    ],
                  ),
                    SizedBox(height: 15),
                    //card_3
                    Row(
                      children: [
                        trainerCard(),
                        SizedBox(width:12),
                        //card_4
                        trainerCard(),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        trainerCard(),
                        SizedBox(width:12),
                        //card_4
                        trainerCard(),
                      ],
                    ),
                    SizedBox(height:15),
                    Row(
                      children: [
                        trainerCard(),
                        SizedBox(width:12),
                        //card_4
                        trainerCard(),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        trainerCard(),
                        SizedBox(width:12),
                        //card_4
                        trainerCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
