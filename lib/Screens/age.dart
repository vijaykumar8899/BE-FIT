import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_animation_set/flutter_animation_set.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/bmi.dart';
import 'package:magic/Screens/weight.dart';
import 'package:magic/Screens/bmi.dart';

class AgeSelectionScreen extends StatefulWidget {
  AgeSelectionScreenState createState() => AgeSelectionScreenState();
}

class AgeSelectionScreenState extends State<AgeSelectionScreen> {
  int _currentAge = 20;

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
                    "Select your age",
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
                      _currentAge = index + 20;
                    });
                  },
                ),
                items: List.generate(81, (index) {
                  int age = index + 20;
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentAge = age;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:
                                age == _currentAge ? Colors.blue : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: age == _currentAge
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
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => weight(
                        age_ : _currentAge,
                      ),
                    ),
                  );

                //  Get.to(weight());
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
            )
          ],
        ),
      ),
    );
  }
}
