import 'package:flutter/material.dart';
import 'package:project/nav.dart';
import 'package:project/training_card.dart';


class page extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>page2();
}
class page2 extends State<page>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(child:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
              child:Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "All Trainings",
                    style:
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            trainingCard(),
            SizedBox(height: 5),
            ],
      ),
    ),
      ),
      bottomNavigationBar:  Nav(),
    );
  }
}
