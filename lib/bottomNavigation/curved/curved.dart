import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/discovery.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/message.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';


class Curved extends StatefulWidget {
  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
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
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.add),
          Icon(Icons.people),
          Icon(Icons.message),
          Icon(Icons.map),
        ],
        onTap:cahngeI ,
        backgroundColor: Colors.transparent,
        height: 55,

      ),
    );;
  }
}
