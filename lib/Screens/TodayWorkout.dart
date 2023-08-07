import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';

import 'package:url_launcher/url_launcher.dart';


class TodayWorkout extends StatefulWidget {
  const TodayWorkout({Key? key}) : super(key: key);

  @override
  State<TodayWorkout> createState() => TodayWorkoutState();
}

class TodayWorkoutState extends State<TodayWorkout> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Russian Twist",
      "price": "4*4",
      "images": "Images/workout/gg.jpg",
    },
    {
      "title": "Crunches",
      "price": "4*4",
      "images": "Images/workout/ff.jpg",
    },
    {
      "title": "V Crunches",
      "price": "4*4",
      "images": "Images/workout/ee.jpg",
    },
    {
      "title": "Leg rises",
      "price": "4*4",
      "images": "Images/workout/dd.jpg",
    },
    {
      "title": "Single Legrises",
      "price": "4*4",
      "images": "Images/workout/cc.jpg",
    },
    {
      "title": "Plank",
      "price": "4*4",
      "images": "Images/workout/bb.jpg",
    },
  ];

  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      // Do something with the captured image
      print("its not working vijay");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 450,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      if (await canLaunch(
                          'http://127.0.0.1:5500/posenet-demo-ml5js-main/index.html')) {
                        await launch(
                            'http://127.0.0.1:5500/posenet-demo-ml5js-main/index.html');
                      } else {
                        throw 'Could not launch http://127.0.0.1:5500/posenet-demo-ml5js-main/index.html';
                      }
                    },
                    child: Container(
                      child: Image.asset(
                        "${gridMap.elementAt(index)['images']}",
                        height: 350,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${gridMap.elementAt(index)['title']}",
                          style: Theme.of(context).textTheme.subtitle1!.merge(
                                const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                        ),
                        Text(
                          "${gridMap.elementAt(index)['price']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
