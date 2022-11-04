import 'dart:math';
import 'package:flutter/material.dart';

class Animation5 extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<Animation5>
    with SingleTickerProviderStateMixin {
  AnimationController? c;
  Animation<double>? a;
  Animation<Offset>? a2;
  Animation<AlignmentGeometry>? a3;
  Animation<Decoration>? a4;
  Animation<TextStyle>? a5;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    c = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    a = CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    );
    a2 = Tween<Offset>(
      begin:Offset(0,0),
      end: Offset(1,1),
    ).animate(CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    ));
    a3 = Tween<AlignmentGeometry>(
      begin:Alignment.bottomRight,
      end: Alignment.topLeft,
    ).animate(CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    ));
    a4 = DecorationTween(
      begin:BoxDecoration(color: Colors.blue),
      end: BoxDecoration(color: Colors.red),
    ).animate(CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    ));
    a5 = TextStyleTween(
      begin:TextStyle(color: Colors.blue,fontSize:10),
      end: TextStyle(color: Colors.red,fontSize:40),
    ).animate(CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    ));

  }

  @override
  void dispose() {
    super.dispose();
    c!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explicit  Animation'),
        ),
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 10,),
              RotationTransition(
                turns: a!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ScaleTransition(
                scale: a!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              SizeTransition(
                sizeFactor: a!,
                axis: Axis.horizontal,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              FadeTransition(
                opacity: a!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              SlideTransition(
                position: a2!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              AlignTransition(
                alignment: a3!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              DecoratedBoxTransition(
                decoration: a4!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              DefaultTextStyleTransition(
                style: a5!,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Mostafa"),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
