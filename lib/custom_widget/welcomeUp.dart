import 'package:flutter/material.dart';

class welcomeUp extends StatelessWidget
{
  final String image;
  final String title;
  final String subtitle;

  welcomeUp({required this.image, required this.title, required this.subtitle});

  @override 
  Widget build(BuildContext context)
  {
    return  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            image,
                            scale: 1.0,
                            height: 400,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "$title",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "$subtitle",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                        ],
                      ),
                    );
  }
}