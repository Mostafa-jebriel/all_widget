import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/discovery.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/message.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Convex extends StatefulWidget {
  @override
  _ConvexState createState() => _ConvexState();
}

class _ConvexState extends State<Convex> {
  int i=0;
  List<Widget> pages=[
    Home(),
    Add(),
    Profile(),
    Message(),
    Discovery(),
  ];
  void cahngeI(int c){
    print(c);
    setState((){
      i=c;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(i),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icon(Icons.home),title: 'Home'),
          TabItem(icon: Icon(Icons.add),title: 'Add'),
          TabItem(icon: Icon(Icons.people),title: 'Profile'),
          TabItem(icon: Icon(Icons.message),title: 'Message'),
          TabItem(icon: Icon(Icons.map),title: 'Discovery'),
        ],
        initialActiveIndex: i,
        onTap:cahngeI ,
        backgroundColor: Colors.deepOrange,
        activeColor: Colors.white,

      ),
    );
  }


}
