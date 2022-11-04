import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/discovery.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/message.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
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
    return Scaffold();
  }
}
