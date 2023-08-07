import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/loginPage.dart';
import 'package:magic/custom_widget/welcomeUp.dart';

class wellcome extends StatefulWidget {
  @override
  State<wellcome> createState() => _wellcomeState();
}

class _wellcomeState extends State<wellcome> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          //  padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(height: double.infinity),
                  items: [
                    welcomeUp(
                        image: "Images/welcome1.jpg",
                        title: "No excuses",
                        subtitle:
                            "The only bad workout is the one that didn't happen."
                      ),

                    welcomeUp(
                        image: "Images/welcome2.jpg",
                        title: "Progress Matters",
                        subtitle:
                            "Fitness is not about being better than someone else,it's about being better than you used to be. "
                      ),

                    welcomeUp(
                        image: "Images/welcome3.jpg",
                        title: "Take Action",
                        subtitle:
                            "You dont have to be great to start, but you have to start to be great."
                      ),
                  ],
                ),
              ),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: ElevatedButton(
                onPressed: () { Get.to(loginPage()); },
                child:  Text("Get Started", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
