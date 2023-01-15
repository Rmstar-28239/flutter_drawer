import 'package:flutter/material.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
      ),
      body: Container(
        child: Center(
          child: Text("My Profile"),
        ),
      ),
    );
  }
}
