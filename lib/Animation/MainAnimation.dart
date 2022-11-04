//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animation1.dart';
import 'animation2.dart';
import 'animation3.dart';
import 'animation4.dart';
import 'animation5.dart';
import 'animation6.dart';
import 'animation7.dart';

class MainAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation1"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation1()));
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation 2"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation2()));
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation 3"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation3()));
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation 4"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation4()));
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation 5"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation5()));
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Animation 6"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation6()));
                }),
            SizedBox(
              height: 10,
            ),
            Builder(
                builder: (ctx) => FlatButton(
                    child: Hero(
                      tag: "a",
                      child: FlutterLogo(
                        size: 50,
                      ),
                    ),
                    onPressed: () => Navigator.push(ctx,
                        MaterialPageRoute(builder: (_) => test())))),
            RaisedButton(
                child: Text("go to page with Animation"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Animation7()));
                }),
          ],
        ),
      ),
    );
  }
}

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test"),),
      body: ListView(
        children: [
          Container(
            child: Hero(
              tag: "a",
              child: FlutterLogo(size: 300,),
            ),
          )
        ],
      ),
    );
  }
}

