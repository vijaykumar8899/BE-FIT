import 'package:flutter/material.dart';
import 'package:magic/Screens/tabsScreen.dart';
import 'package:magic/Screens/wellcome.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: wellcome(),
    );
  }
}
