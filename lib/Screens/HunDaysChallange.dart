
import 'package:flutter/material.dart';
import 'dart:ui';
class HunDaysChallange extends StatefulWidget
{
  @override 
  HunDaysChallangeState createState() => HunDaysChallangeState();
}

class HunDaysChallangeState extends State<HunDaysChallange>
{
  @override 
  Widget build(BuildContext context) 
  {
      return Scaffold(
          body:Container(
            child:Center(
              child:Text("100DaysChallange",style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
      ),
      );
  }
    
}