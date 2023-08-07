import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/Details.dart';
import 'package:magic/Screens/height.dart';

class bmi extends StatefulWidget {
  final int age;
  final int height;
  final int Currentweight_;

  bmi({required this.age, required this.height, required this.Currentweight_});
  bmiState createState() => bmiState();
}

class bmiState extends State<bmi> {
  late double _bmi;

  @override
  void initState() {
    super.initState();
    _bmi = widget.Currentweight_ / (widget.height * widget.height / 10000);

    // Delay for 2 seconds before displaying the BMI status
    Future.delayed(Duration(seconds: 2), () {
      setState(() {});
    });
  }

  String getBmiStatus(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal";
    } else {
      return "Overweight";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculating your BMI'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Your BMI is: ",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    _bmi.toStringAsFixed(2),
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
              SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "You are ${getBmiStatus(_bmi)}",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(seconds: 2),
              ),
              SizedBox(height: 20),
              Text(
                'Age: ${widget.age}, Height: ${widget.height} cm, Weight: ${widget.Currentweight_} kg',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 150),
              Row(
                children: [
                  //back to age
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 16.0, left: 16.0),
                    child: InkWell(
                      onTap: () {
                        //age
                        Get.back();
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
                  SizedBox(
                    width: 360,
                  ),
                  //go to height
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 16.0, right: 16.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(Details());
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
      ),
    );
  }
}
