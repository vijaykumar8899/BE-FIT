import 'package:flutter/material.dart';
import 'package:magic/Screens/ProfileScreen.dart';
import 'package:magic/Screens/diet.dart';
import 'package:magic/Screens/home.dart';
import 'package:magic/Screens/workout.dart';


void main() {
  runApp(TabsScreen());
}

class TabsScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  List _pages = [
    Home(),
    Workout(),
    Diet(),
    ProfileScreen(),
  ];

  changeIndex(selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: changeIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center_outlined), label: "Workout"),
            BottomNavigationBarItem(
                icon: Icon(Icons.description_rounded), label: "Diet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ]),
    );
  }
}
