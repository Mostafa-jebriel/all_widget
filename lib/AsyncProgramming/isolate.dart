import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:isolate';

class Isolate extends StatefulWidget {
  @override
  State<Isolate> createState() => _MyAppState();
}

class _MyAppState extends State<Isolate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("isolate"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Click me"),
          onPressed: () {
            //Isolate.spawn(blockApp, 2);
            compute(blockApp, 2);
            print("Main isolate");
          },
        ),
      ),
    );
  }

}

blockApp(int s){
  print("start");
  sleep(Duration(seconds: s));
  print("end");
}



