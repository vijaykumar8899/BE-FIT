import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/tabsScreen.dart';

class Details1 extends StatefulWidget {
  @override
  Details1State createState() => Details1State();
}

class Details1State extends State<Details1> {
  final genderKey = GlobalKey();
  final weightKey = GlobalKey();
  final ageKey = GlobalKey();
  final healthHistoryKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Let us know more about you",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
         // alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,     
              children: [
                
               
                SizedBox(
                  height: 200,
                ),
                TextField(
                  key: healthHistoryKey,
                  decoration: InputDecoration(
                    hintText: "Enter Health History",
                    hintStyle: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70, width: 2.0),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70, width: 2.0),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(TabsScreen());
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
