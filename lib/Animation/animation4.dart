import 'dart:math';
import 'package:flutter/material.dart';

class Animation4 extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<Animation4> {
  double a = 0;
  double v = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tween Animation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: a),
                duration: Duration(seconds: 1),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent,
                  ),
                ),
                builder: (_, double angle, child) => Transform.rotate(
                  angle: angle,
                  child: child,
                ),
              ),
              Text(
                "${(v * (180 / pi)).round()}",
                style: TextStyle(fontSize: 30),
              ),
              Slider(
                value: v,
                onChanged: (vv) => setState(() {
                  v = vv;
                  a = vv;
                }),
                min: 0,
                max: pi * 2,
                divisions: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
