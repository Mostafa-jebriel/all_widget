import 'package:all/bottomNavigation/Custom_Shaped.dart';
import 'package:all/bottomNavigation/ExpandableBottomAppBar.dart';
import 'package:all/bottomNavigation/animated_bottom.dart';
import 'package:all/bottomNavigation/sliding_clipped_nav_bar.dart';
import 'package:all/bottomNavigation/snake_navigationbar.dart';
import 'package:all/bottomNavigation/solid/solidbottomsheet.dart';
import 'package:all/bottomNavigation/spincircle/spincircle.dart';
import 'package:flutter/material.dart';
import 'circle/circle.dart';
import 'convex/convex.dart';
import 'curved/curved.dart';
import 'floating/floating.dart';
import 'normal/normal.dart';



class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation'),centerTitle: true, automaticallyImplyLeading: false,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NormalBottom()));
                },
                child: Text(
                  "Normal",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Circle()));
                },
                child: Text(
                  "Circle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Convex()));
                },
                child: Text(
                  "Convex",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Curved()));
                },
                child: Text(
                  "Curved",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Floating()));
                },
                child: Text(
                  "Floating",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spincircle()));
                },
                child: Text(
                  "SpinCircle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => solidbottomsheet()));
                },
                child: Text(
                  "solid bottom sheet",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExpandableBottomAppBar()));
                },
                child: Text(
                  "Expandable Bottom AppBar",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shaped()));
                },
                child: Text(
                  "Custom Shaped",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sliding_clipped()));
                },
                child: Text(
                  "sliding clipped",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => animated_bottom()));
                },
                child: Text(
                  "animated bottom",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => snake_navigationbar()));
                },
                child: Text(
                  "snake navigation bar",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
