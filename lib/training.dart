import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/trainer_.dart';

import 'nav.dart';

class training extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body:SafeArea(child:
      Padding(
          padding: const EdgeInsets.all(10),
          child:
      SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset(
                        "assets/images/Rectangle 30.png",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                SizedBox(width: 13),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back !",style: TextStyle(fontSize: 25),),
                    Text("Let‘s Workout!",style: TextStyle(color:Color(0xff726B6B),fontSize: 18),)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daily Activity",style: TextStyle(fontSize: 25),),
                Icon(Icons.add,size: 24,)
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               trainer(),
               trainer(),
             ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                trainer(),
                trainer(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Progress Plan",style: TextStyle(fontSize: 25),),
                Text("75%",style: TextStyle(fontSize: 25),)
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: LinearProgressIndicator(
                value: 0.75,
                minHeight: 10,
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Image.asset("assets/images/Rectangle 15.png",height: 250,width: 400,fit: BoxFit.fill,),
                Positioned(
                    top: 30,
                    left:10,
                  right: 20,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 40,
                      padding: EdgeInsets.only(left: 5,right: 4,top: 7,bottom: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffB8B3B3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Week3/Day1",style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 10),
                    Text("Full body workout",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w600),),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width:120,
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.access_time_filled, color: Colors.orange, size: 30),
                                  SizedBox(width: 5),
                                  Text("60 min", style: TextStyle(fontSize: 15, color: Colors.black)),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.local_fire_department, color: Colors.orange, size: 30),
                                  SizedBox(width: 5),
                                  Text("500 Kcal", style: TextStyle(fontSize: 15, color: Colors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.play_arrow,color: Colors.white,size: 40,),
                        )
                      ],
                    ),
                  ],
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daily food",style: TextStyle(fontSize: 25),),
                Icon(Icons.add,size: 24,)
              ],
            ),
             SizedBox(height: 10),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20),
               ),
               child: Row(
                 children: [
                   SizedBox(
                     width: 240,
                     height: 240,
                     child: Stack(
                       alignment: AlignmentDirectional.center,
                       children: [
                         SizedBox(
                           width:220,
                           height: 220,
                           child: CircularProgressIndicator(
                            value: 0.8,
                            strokeWidth: 4,
                            valueColor: AlwaysStoppedAnimation(Colors.purpleAccent
                            ),
                           ),
                         ),
                         SizedBox(
                           width:180,
                           height: 180,
                           child: CircularProgressIndicator(
                             value: 0.6,
                             strokeWidth: 4,
                             valueColor: AlwaysStoppedAnimation(Colors.green
                             ),
                           ),
                         ),
                         SizedBox(
                           width:150,
                           height: 150,
                           child: CircularProgressIndicator(
                             value: 0.4,
                             strokeWidth: 4,
                             valueColor: AlwaysStoppedAnimation(Colors.amberAccent
                             ),
                           ),
                         )
                       ],
                     ),
                   ),
                   Column(
                     children: [
                       Row(
                         children: [
                           Container(
                             width: 10,
                             height: 10,
                             decoration: BoxDecoration(
                               color:Colors.purpleAccent,
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),
                           SizedBox(width: 1),
                           Text("protein",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 5),
                           Text("90 of 130",style: TextStyle(color: Colors.grey,fontSize: 15),)
                         ],
                       ),
                       SizedBox(height: 24),
                       Row(
                         children: [
                           Container(
                             width: 10,
                             height: 10,
                             decoration: BoxDecoration(
                               color:Colors.green,
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),
                           SizedBox(width: 1),
                           Text("protein",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 5),
                           Text("90 of 130",style: TextStyle(color: Colors.grey,fontSize: 15),)
                         ],
                       ),
                       SizedBox(height: 24),
                       Row(
                         children: [
                           Container(
                             width: 10,
                             height: 10,
                             decoration: BoxDecoration(
                               color:Colors.amberAccent,
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),
                           SizedBox(width: 1),
                           Text("protein",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 5),
                           Text("90 of 130",style: TextStyle(color: Colors.grey,fontSize: 15),)
                         ],
                       ),
                     ],
                   )
                 ],
               ),
             ),

          ],
        ),
      )
      ),
      ),
      bottomNavigationBar: Nav(),
    );
  }
}