import 'dart:async';

import 'package:all/Clock/clock_view.dart';
import 'package:all/Clock/time.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

import 'colors.dart';


class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Clock> {
  DateTime now = DateTime.now();
  Timer? _everySec;

  Future<DateTime> fetchClock() async {
    now = DateTime.now();
    return now;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _everySec = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        now = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    /* getting time */

    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TimerBuilder.periodic(
                Duration(seconds: 1),
                builder: (context) {
                  //getting the time
                  String second = DateTime.now().second < 10
                      ? "0${DateTime.now().second}"
                      : DateTime.now().second.toString();
                  String minute = DateTime.now().minute < 10
                      ? "0${DateTime.now().minute}"
                      : DateTime.now().minute.toString();
                  String hour = DateTime.now().hour < 10
                      ? "0${DateTime.now().hour}"
                      : DateTime.now().hour.toString();
                  String day = DateTime.now().toString();
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: AppStyle.mainTextThin,
                          ),
                          Text(
                            "${hour}:${minute}",
                            style: AppStyle.maintext,
                          ),
                        ],
                      ),
                      Center(child: Text("$hour:$minute:$second",style: TextStyle(fontSize: 30),)),
                      SizedBox(
                        height: 40.0,
                      ),
                      ClockView(DataTime(DateTime.now().hour,
                          DateTime.now().minute, DateTime.now().second)),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
