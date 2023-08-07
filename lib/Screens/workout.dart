import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/TodayWarmup.dart';
import 'package:magic/Screens/TodayWorkout.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Workout"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(TodayWarmup());
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    "Images/warmup/warmupcover.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(TodayWorkout());
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    "Images/workout/workoutCover.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
