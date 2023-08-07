import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/age.dart';
import 'package:magic/Screens/bmi.dart';
import 'package:magic/Screens/height.dart';
import 'package:magic/Screens/weight.dart';

class weight extends StatefulWidget {
  

  int age_;
 
  weight({required this.age_});
  weightState createState() => weightState();
   
}

class weightState extends State<weight> {
  int _currentWeight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Details'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Select your weight",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 50,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.2,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentWeight = index + 40;
                    });
                  },
                ),
                items: List.generate(81, (index) {
                  int age = index + 40;
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentWeight = age;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: age == _currentWeight
                                ? Colors.blue
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: age == _currentWeight
                                    ? Colors.white
                                    : Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            ),
            Row(
              children: [
                //back to age
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 16.0, left: 16.0),
                  child: InkWell(
                    onTap: () {
                      //age
                      Get.to(AgeSelectionScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 360,),
                //go to height
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 16.0, right: 16.0),
                  child: InkWell(
                    onTap: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => height(
                        age: widget.age_,
                        Currentweight_: _currentWeight,
                      ),
                    ),
                  );

                     //   Get.to(height());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //end height
              ],
            ),
          ],
        ),
      ),
    );
  }
}
