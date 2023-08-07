import 'package:flutter/material.dart';
import 'package:magic/Screens/ProfileScreen.dart';
import 'package:magic/Screens/loginPage.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  String _username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Register Page",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
         backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("Images/LOGO33.png"),
               TextField(
          decoration: InputDecoration( 
            hintText: "Enter Name" ,
            hintStyle: TextStyle(
      color: Colors.black87,
      fontStyle: FontStyle.italic,),
             filled: true,
            fillColor: Colors.white70,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70,width:2.0),
              borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70,width:2.0),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
           keyboardType: TextInputType.number,
           controller: _nameController,

           
        ),

        SizedBox(height: 10,),
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
                      borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
                controller: _emailController,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
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
                controller: _phoneController,
              ),
              SizedBox(height: 10),
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
                      borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
                controller: _passwordController,
              ),
              SizedBox(height: 20),
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
                  //  Navigator.push(
                  //    context,
                  //  MaterialPageRoute(
                  //    builder: (context) => ProfileScreen(name: _nameController.text, phone: _phoneController.text),
                 //   ),
                 //   );
                    setState(() {

                      Get.to(loginPage());
                      _username = "Login Successful";
                      _emailController.clear();
                      _passwordController.clear();
                    });
                  },
                  child: Text('Register'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: TextButton(
                  child: Text("Already have an account? Login"),
onPressed: () {
setState(() {
Get.to(loginPage());
});
},
),
),
],
),
),
),
);
}
}
