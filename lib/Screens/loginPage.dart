import 'package:flutter/material.dart';
import 'package:magic/Screens/RegisterPage.dart';
import 'package:magic/Screens/Details.dart';
import 'package:get/get.dart';
import 'package:magic/Screens/age.dart';

class loginPage extends StatefulWidget {
  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State<loginPage> {
  @override
  TextEditingController _Email = TextEditingController();
  TextEditingController _password = TextEditingController();
  var UserName = '';
  var _user = '';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Login Page",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            color: Colors.black,
          //  alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //   Text("Login Page", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                  Container(
                    
                    child: Image.asset("Images/LOGO33.png"),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    // keyboardType: TextInputType.number,
                    controller: _Email,
                  ),
        
                  SizedBox(height: 10),
        //input2
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
        //           keyboardType: TextInputType.number,
                    controller: _password,
                  ),
        
                  SizedBox(
                    height: 20,
                  ),
        
                  TextButtonTheme(
                    data: TextButtonThemeData(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Get.to(AgeSelectionScreen());
                          UserName = "Login Succesfull";
                          _Email.clear();
                          _password.clear();
                        });
                      },
                      child: Text('Enter'),
                    ),
                  ),
        
                  SizedBox(height: 10),
        
                  Container(
                    child: TextButton(
                      child: Text("Create New Account"),
                      onPressed: () {
                        Get.to(Register());
                      },
                    ),
                  ),
        
                  SizedBox(height: 10),
                ]),
          ),
        ),
      ),
    );
  }
}
