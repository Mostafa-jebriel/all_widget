
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'animation2.dart';
class Animation7 extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<Animation7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('go to page with anmation'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("fade"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("leftToRight"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("rightToLeft"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("topToBottom"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("bottomToTop"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("scale"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.centerRight, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("size"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.size, alignment: Alignment.centerRight,child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("rotate"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.rotate, alignment: Alignment.centerRight, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("rightToLeftWithFade"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: Animation2()));
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text("leftToRightWithFade"),
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRightWithFade, child: Animation2()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
