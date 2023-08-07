import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/bmi.dart';
import 'package:magic/Screens/height.dart';

class Gender extends StatefulWidget {
  Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Gender'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _gender = 'male';
                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _gender == 'male' ? Colors.blue : Colors.grey[300],
                      ),
                      child: Image.asset("Images/welcome1.jpg", fit: BoxFit.cover,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _gender = 'female';
                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _gender == 'female' ? Colors.pink : Colors.grey[300],
                      ),
                      child: Image.asset("Images/welcome3.jpg", fit: BoxFit.cover,),
                    ),
                  ),
                ],
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
                  //    Get.to(height());
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
                      // navigating to weight
                    //  Navigator.push(
                      //  context,
                        //MaterialPageRoute(
                          //builder: (context) => bmi(weight : _currentWeight),
                        //),
                      //);

                      //  Get.to(bmi());
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
