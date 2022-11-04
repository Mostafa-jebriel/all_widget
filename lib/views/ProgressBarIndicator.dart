import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math' as math;

import 'package:percent_indicator/linear_percent_indicator.dart';

class IndicatorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Custom Progress Bar"),
          backgroundColor: Colors.redAccent
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
                padding: EdgeInsets.all(10),
              child: CircularPercentIndicator(
                radius: 120,
                lineWidth: 15,
                percent: 60/100,
                animation: true,
                animationDuration: 1200,
                center: Text('80%'),
                progressColor: Colors.green,
              )
            ),
            SizedBox(height: 30,),
            Container(
                padding: EdgeInsets.all(10),
              child: LinearPercentIndicator(
                width: 300,
                percent: 40/100,
                animation: true,
                animationDuration: 3000,
                leading: Text('40%'),
                progressColor: Colors.red,
              )
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(10),
              child: LinearPercentIndicator(
                width: 300,
                percent: 80/100,
                lineHeight: 10,
                animation: true,
                animationDuration: 2000,
                leading: Text('80%'),
                progressColor: Colors.blue,
                trailing:Text('100%') ,
              )
            ),

          ],
        ),
      ),
    );
  }
}

