import 'package:flutter/material.dart';

import 'logIn.dart';
import 'nav.dart';

class account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Hi , dear ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            SizedBox(height: 10),
            Container(
            width: 400,
            height: 260,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:Colors.grey[300],
              borderRadius: BorderRadius.circular(20),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image.asset(
                      "assets/images/Rectangle 30.png",
                      width: 110,
                      height: 140,
                      fit: BoxFit.cover,
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hi, dear",
                                style: TextStyle(fontSize: 25),
                              ),
                              Icon(
                                Icons.edit_note_outlined,
                                size: 30,
                              ),
                            ],
                          ),

                          SizedBox(height: 8),

                          Text(
                            "+20 *** *** ***",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text("Age", style: TextStyle(fontSize: 18)),
                          SizedBox(height:2 ),
                          Text(
                            "20 years",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text("Height", style: TextStyle(fontSize: 18)),
                          SizedBox(height:2 ),
                          Text(
                            "165 cm",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text("Weight", style: TextStyle(fontSize: 18)),
                          SizedBox(height:2 ),
                          Text(
                            "54 Kg",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height: 110,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.edit,color: Colors.orange,size: 35,),
                        Text("subscription",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            children: [
                              SizedBox(height: 30),
                              Text("Notification ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                              BottonSheetApp( "receive SMS notification"),
                              BottonSheetApp("receive PUSH notifications"),
                              BottonSheetApp("receive email newsletter"),
                            ],);
                        },
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.notifications,color: Colors.orange,size: 35,),
                          Text("notification",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height: 110,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.support_agent_outlined,color: Colors.orange,size: 35,),
                        Text("support",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 110,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.credit_card_outlined,color: Colors.orange,size: 35,),
                        Text("payment",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  _showMaterialDialog(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.logout,color: Colors.orange,),
                    Text("Log out",style: TextStyle(color: Colors.orange,fontSize: 25),)],
                ),
              )
            ],)
        ),
      ),
      bottomNavigationBar: Nav(),
);
}
}
void _showMaterialDialog(BuildContext context) {
  showDialog(context: context, builder:(BuildContext context)
      {
        return AlertDialog(
          content:  Text('Are you sure you want to log out?',style: TextStyle(fontSize: 15),),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuilderContext)=>Login()));
            }, child: Text("log out",style: TextStyle(color: Colors.red),),),
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Cancel",style: TextStyle(color: Colors.black),))
          ],
        );
      }
  );
}
class BottonSheetApp extends StatelessWidget{
  late String text;
  BottonSheetApp(String this.text);
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           NotiBotton(text),
           SizedBox(height: 1),
         ],
        ),
      );
  }
}
class NotiBotton extends StatelessWidget{
  @override
  late String text;
  NotiBotton(String this.text);
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xfff0f0f0),
        borderRadius: BorderRadius.circular(20),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(fontSize: 15),),
          SwitchBotton(),
        ],
      ),
    );
  }
}
class SwitchBotton extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>switchIcon();
}
class switchIcon extends State<SwitchBotton>
{
  bool light=false;
  @override
  Widget build(BuildContext context) {
    return Switch(value: light,activeThumbColor: Colors.green, onChanged: (bool value){
      setState(() {
        light=value;
      });
    });
  }

}