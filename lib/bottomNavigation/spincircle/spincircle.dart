import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/discovery.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/message.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Spincircle extends StatefulWidget {
  @override
  _SpincircleState createState() => _SpincircleState();
}

class _SpincircleState extends State<Spincircle> {
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
      body: SpinCircleBottomBarHolder(
        child: Container(),
        bottomNavigationBar: SCBottomBarDetails(
          bnbHeight: 55,
          items: [
            SCBottomBarItem(icon: Icons.home,onPressed:()=> Home()),
            SCBottomBarItem(icon: Icons.add,onPressed:()=>Add() ),
            SCBottomBarItem(icon: Icons.nat,onPressed:()=>Profile() ),
            SCBottomBarItem(icon: Icons.face,onPressed:()=>Message() ),
          ],
          circleItems: [
            SCItem(icon:  Icon(Icons.not_interested), onPressed: ()=>Discovery()),
            SCItem(icon:  Icon(Icons.camera_enhance), onPressed: ()=>Profile() ),
            SCItem(icon:  Icon(Icons.backpack), onPressed: ()=>Message()),
          ],
          circleColors: [
            Colors.white,
            Colors.blueGrey,
            Colors.blue,
          ]

        ),
      ),
    );
  }
}
