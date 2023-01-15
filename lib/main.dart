import 'package:flutter/material.dart';
import 'package:flutter_navigation/Corse.dart';
import 'package:flutter_navigation/Myprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
      routes:<String,WidgetBuilder>{
       "/prfile":(BuildContext context)=>new MyProfile(),
    },
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: new AppBar(
        title: const Text("Drawer",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.menu_rounded,color: Colors.white,),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
         shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:Radius.circular(10),
           bottomRight: Radius.circular(10),)),
          backgroundColor: Colors.white,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text("Rupesh kumar verma"),
                    accountEmail: Text("rupeshkumar28239@gmail.com"),
                   currentAccountPicture: CircleAvatar(
                     child: Text("R"),
                   ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed("/prfile");
                    // Navigator.push(context,MaterialPageRoute(builder: (context){
                    //   return MyProfile();
                    // }));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: const Text(' My Course '),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Corse();
                    }));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.workspace_premium),
                  title: const Text(' Go Premium '),
                  onTap: () {
                    Navigator.pop(context);

                  },
                ),
                ListTile(
                  leading: Icon(Icons.video_label),
                  title: const Text(' Saved Videos '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: const Text(' Edit Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

              ],
            ),
              ),
    );
  }
}
