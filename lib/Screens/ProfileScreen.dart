import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget
{
 // String name;
 // String phone;
 // String Gender ;
 // ProfileScreen({required this.name, required this.phone});

  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("Images/vijay.jpg"),),
            title: Text("Vijay kumar"),
            subtitle: Text("+919150987651"),
            trailing: TextButton(child: Text("Edit"),onPressed: (){},),
          ),

          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("Images/bell.png")),
            title: Text("Notifications"),
            subtitle: Text("Turn on / off Notifications"),
            trailing: Switch(value: true,onChanged: (i){},),
          ),

           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("Images/activity.png"),),
            title: Text("Workout Activity"),
            subtitle: Text("Manage My Activity"),
            trailing: Icon(Icons.arrow_forward),
          ),

          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("Images/address.png"),),
            title: Text("My Diet"),
            subtitle: Text("Manage My Diet"),
            trailing: Icon(Icons.arrow_forward),
          ),

        ],
      ),
    );
  }
}