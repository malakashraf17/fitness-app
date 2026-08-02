import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowBottonSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        height: 470,
        padding: EdgeInsets.only(top: 20 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xfff0f0f0),
        ),
        child: Column
               (
               children: [
                 Text("Filter by :",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
                 SizedBox(height: 10),
                 Row(
                   children: [
                     Text("Type of training ",style: TextStyle(fontSize: 25),),
                   ],
                 ),
                 SizedBox(height: 10),
                 Wrap(
                   spacing: 2,
                   runSpacing: 5,
                   children: [
                    fliterItem("yoga"),
                    fliterItem("cardio"),
                    fliterItem("bodyboilding"),
                    fliterItem("crossfit"),
                    fliterItem("after giving birth"),
                    fliterItem("stratching"),
                   ],
                 ),
                 SizedBox(height: 20,width: 10),
                 Row(
                   children: [
                     Text("By school ",style: TextStyle(fontSize: 25),),
                   ],
                 ),
                 SizedBox(height: 10),
                 Wrap(
                   spacing: 2,
                   runSpacing: 5,
                   children: [
                     fliterItem("conbody"),
                     fliterItem("freeletics"),
                     fliterItem("Aaptiv"),
                     fliterItem("sekta"),
                     fliterItem("yoga-club"),
                   ],
                 ),
                 SizedBox(height:13),
                 bar(),
        ],
      ),
    );
  }
}
Widget fliterItem(String text)
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal:15,vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(text,style: TextStyle(fontSize: 19),),
  );
}
class bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [

          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 18),

          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Apply",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}