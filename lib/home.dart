import 'package:flutter/material.dart';
import 'package:project/popular_training.dart';
import 'package:project/trainer_card.dart';
import 'package:project/training_card.dart';

import 'all_coach.dart';
import 'filter.dart';
import 'nav.dart';
class FirstScreenhom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: EdgeInsets.all(10),
                child: SearchBar(
                  hintText: "search",
                  leading: Icon(Icons.search),
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_voice),
                    ),
                  ],
                ),
              ),

              // Banner (Join Premium)
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle 12.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                        "join premium",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    SizedBox(height: 5),
                    Text(
                      "unlock all your contents statistics advices working with personal trainers by monthly subscribtion",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: false,
                          builder: (context) {
                            return ShowBottonSheet();
                            },
                        );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "move to premium",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              // Popular Training Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "popular training",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page(),
                          ),
                        );
                      },
                      child: Text("see all", style: TextStyle(fontSize: 16, color: Colors.blue)),
                    )
                  ],
                ),
              ),

              // Training Card 1
              trainingCard(),
              SizedBox(height: 5),
              trainingCard(),
              SizedBox(height: 5),
              trainingCard(),
              // Popular Coaches Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "popular coaches",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page1(),
                          ),
                        );
                      },
                      child: Text("see all", style: TextStyle(fontSize: 16, color: Colors.blue)),
                    )
                  ],
                ),
              ),

              // Coaches Horizontal Scroll
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    // Coach Card 1
                    trainerCard(),
                    SizedBox(width: 12),
                    trainerCard(),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // Fitness Schools Header & Horizontal Scroll
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "fitness schools",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("see all", style: TextStyle(fontSize: 16, color: Colors.blue)),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: List.generate(
                          8,
                              (index) => Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("assets/images/Rectangle 10.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Nav(),
    );
  }
}
