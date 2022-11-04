
import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/discovery.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/message.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
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
      bottomNavigationBar: FloatingNavbar(
        items: [
          FloatingNavbarItem(icon: Icons.home,title: 'Home'),
          FloatingNavbarItem(icon: Icons.add,title: 'Add'),
          FloatingNavbarItem(icon: Icons.people,title: 'Profile'),
          FloatingNavbarItem(icon: Icons.message,title: 'Message'),
          FloatingNavbarItem(icon: Icons.map,title: 'Discovery'),
        ],
        currentIndex: i,
        onTap:cahngeI ,

      ),
    );
  }
}
