import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/HunDaysChallange.dart';
import 'package:magic/Screens/ThreeDaysChallange.dart';


class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late PageController pageController;
  int pageNo = 0;

  final List<Map<String, dynamic>> gridMap = [
    {
      "images": "Images/homeImages/home3.jpg",
    },
    {
      "images": "Images/homeImages/home6.jpg",
    },
    {
      "images": "Images/homeImages/home4.jpg",
    },
    {
      "images": "Images/homeImages/home5.jpg",
    },
    {
      "images": "Images/homeImages/home1.jpg",
    },
  ];

  late Timer carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
  }

  @override
  void dispose() {
    pageController.dispose();
    carasouelTmer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ListTile(
                onTap: () {},
                selected: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                selectedTileColor: Colors.indigoAccent.shade100,
                title: Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.subtitle1!.merge(
                        const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                        ),
                      ),
                ),
                subtitle: Text("Workout makes the day special!",
                    style: Theme.of(context).textTheme.subtitle2),
              ),
            ),
            SizedBox(
              height: 250,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageNo = index;
                  });
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (ctx, child) {
                      return child!;
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 36,
                        bottom: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("${gridMap[index]['images']}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: gridMap.length,
              ),
            ),
            const SizedBox(
              height: 12.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                gridMap.length,
                (index) => Container(
                  margin: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.circle,
                    size: 12.0,
                    color: pageNo == index
                        ? Colors.indigoAccent
                        : Colors.grey.shade300,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            
              Container(
                padding: EdgeInsets.all(10),
                height: 70 ,
                width: 300,
                
                 decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(child: Text("Calories burned : 500" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),

              SizedBox(height: 20,),
            //homeUse

            Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Expanded(
      child: GestureDetector(
        onTap: () {
          Get.to(HunDaysChallange());
        },
        child: Container(
          height: 150,
          width: 300,
          color: Colors.green,
          child: Center(
            child: Text(
              "100 Days Challenge",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    Expanded(
      child: GestureDetector(
        onTap: () {
          Get.to(ThreeDaysChallange());
        },
        child: Container(
          height: 150,
          width: 300,
          color: Colors.blue,
          child: Center(
            child: Text(
              "365 Days Challenge",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  ],
),

            
            //end
          ],
        ),
      ),
    );
  }
}
