import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/masseges.dart';
import 'package:project/nav.dart';

import 'main.dart';

class Chat2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>chat2();
}
class chat2 extends State<Chat2>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(child:
      Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
              ),
              SizedBox(width: 110),
              Column(
                children: [
                  Text(
                    "Chats",
                    style:
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color:Color(0xff1C8730),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(" Online",style: TextStyle(color: Color(0xff1C8730),fontWeight: FontWeight.w500,),)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 320,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "lost 2 Kg this week! Feeling super motivated"
                    ,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Masseges(),
          ),
        ],
          )
      ),
    );
  }
}
