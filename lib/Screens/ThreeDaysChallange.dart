
import 'package:flutter/material.dart';
class ThreeDaysChallange extends StatefulWidget
{
  @override 
  ThreeDaysChallangeState createState() => ThreeDaysChallangeState();
}

class ThreeDaysChallangeState extends State<ThreeDaysChallange>
{
  @override 
  Widget build(BuildContext context) 
  {
      return Scaffold(
          body:Container(
            child:Center(
              child:Text("365DaysChallange",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
      );
  }
    
}