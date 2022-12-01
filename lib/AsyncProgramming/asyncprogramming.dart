import 'dart:io';
import 'package:flutter/material.dart';
import 'isolate.dart';
import 'Future.dart';
import 'Stream.dart';

class AsyncProgramming extends StatefulWidget {
  @override
  State<AsyncProgramming> createState() => _MyAppState();
}
class _MyAppState extends State<AsyncProgramming> {
  @override
  Widget build(BuildContext context) {
    return  MyHome();
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Async Programming"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Go to Onther Page",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      backgroundColor: Colors.black),
                ),
              ),
            ),
            MaterialButton(
              child: Text(
                "Isolate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {
                go(context, 1);
              },
            ),
            MaterialButton(
              child: Text(
                "Future",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {
                go(context, 2);
              },
            ),
            MaterialButton(
              child: Text(
                "Streams",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {
                go(context, 3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void go(BuildContext ctx3, int n) {
  Navigator.of(ctx3).push(MaterialPageRoute(builder: (_) {
    if (n == 1) {
      return Isolate();
    } else if (n == 2) {
      return Futures();
    } else if (n == 3){
      return Streams();
    }
    else{
      return Streams();
    }
  }));
}

int FutureTest() {
  int x = 0;
  for (int i = x; i <= 100; i++) {
    x = x + i;
  }
  return x;
}

void future() {
  //Future
  final Future<int> myfuture = Future(FutureTest);
  myfuture.then((value) => print(value)).catchError((e) => print(e));
  print("Main Futures");
  print("Main Futures1");
  print("Main Futures2");
}

void stream() {
  //Streams
  final myS = Stream.periodic(Duration(seconds: 1), (a) => a);
  final s2 = myS.where((event) => event%2==0);
  final s = myS.listen((event) {print(event);});
  // final s = s2.listen((event) {print(event);});
  s.onData((data) {
    data>10?s.cancel():print(data);
  });
}
