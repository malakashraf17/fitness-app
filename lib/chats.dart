import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    "assets/images/Rectangle 30.png",
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                )
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Emily", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  Container(
                      width: 200,
                      child: Text("lost 2 Kg this week! Feeling super motivated", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
    ],
    ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("12:00", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff1C8730),
                    borderRadius: BorderRadius.circular(15), // دائرة
                  ),

                  child: const Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}