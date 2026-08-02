import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class trainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 180,
          height: 125,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Calories",style: TextStyle(fontSize: 22),),
              Text("1500",style: TextStyle(fontSize: 22,color: Colors.orange),),
              SizedBox(height: 11),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Kcal",style: TextStyle(fontSize: 20),),
              )
            ],
          ),
        ),
      ],
    );
  }

}