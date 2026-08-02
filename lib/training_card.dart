import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class trainingCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
          children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/images/Rectangle 15.png",
        width: 110,
        height: 130,
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(width: 10),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "crossfit with den",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    Text(
    "profi",
    style: TextStyle(fontSize: 15, color: Colors.black54),
    ),
    SizedBox(height: 15),
    Row(
    children: [
    Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
    children: [
    Icon(Icons.access_time_filled, color: Colors.orange, size: 16),
    SizedBox(width: 4),
    Text("60 min", style: TextStyle(fontSize: 12, color: Colors.black)),
    ],
    ),
    ),
    SizedBox(width: 8),
    Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
    children: [
    Icon(Icons.local_fire_department, color: Colors.orange, size: 16),
    SizedBox(width: 4),
    Text("500 Kcal", style: TextStyle(fontSize: 12, color: Colors.black)),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ],
    ),
    );
  }

}