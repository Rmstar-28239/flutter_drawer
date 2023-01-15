import 'package:flutter/material.dart';
class Corse extends StatefulWidget {
  const Corse({Key? key}) : super(key: key);

  @override
  State<Corse> createState() => _CorseState();
}

class _CorseState extends State<Corse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course",style: TextStyle(color: Colors.white),),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
      ),
      body: Container(
        child: Center(child: Text("Course")),
      ),
    );
  }
}
