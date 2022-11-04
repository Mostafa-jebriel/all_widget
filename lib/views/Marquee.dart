import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';


class MarqueePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MarqueePage> {
  double d = 0.0,d2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Marquee"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 80,
              child: Card(
                color: Colors.red,
                child: Marquee(
                  text: "hi i am mostafa",
                  blankSpace: 100,
                  crossAxisAlignment : CrossAxisAlignment.end,
                  accelerationDuration: Duration(microseconds: 500),

                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 80,
              child: Card(
                color: Colors.indigo,
                child: Marquee(
                  text: "hi i am mostafa",
                  blankSpace: 50,
                  scrollAxis: Axis.vertical,
                  pauseAfterRound: Duration(seconds: 2),
                  accelerationDuration: Duration(microseconds: 50),

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
