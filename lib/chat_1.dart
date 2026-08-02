import 'package:flutter/material.dart';
import 'package:project/chat_2.dart';
import 'package:project/chats.dart';
import 'nav.dart';
class Chat1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>chat1();
}
class chat1 extends State<Chat1>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: const Color(0xFFF0F0F0),
       body: SafeArea(
             child: Center(
               child: Column(
                 children: [
                 Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: const [
                   SizedBox(height: 100),
                   Text(
                     "Chats",
                     style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                     ),
                   ),
                 ],
               ),
                   Padding(
                     padding: EdgeInsets.only(left: 10,right: 10),
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
                   SizedBox(height: 19),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Chat2(),),);
                     },
                       child: chats()),
                   SizedBox(height: 19),
                   GestureDetector(
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Chat2(),),);
                       },
                       child: chats()),
                   SizedBox(height: 19),
                   GestureDetector(
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Chat2(),),);
                       },
                       child: chats()),
                   SizedBox(height: 19),
                   GestureDetector(
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Chat2(),),);
                       },
                       child: chats()),

                      ]
                      ),
             )
   ),

             bottomNavigationBar: Nav(),
   );
  }
}