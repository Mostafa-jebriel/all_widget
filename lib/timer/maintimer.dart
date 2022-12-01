
import 'package:all/allwidget/Buttons.dart';
import 'package:all/allwidget/Slider.dart';
import 'package:all/allwidget/dropdownplus.dart';
import 'package:all/allwidget/textform.dart';
import 'package:all/timer/slide_countdown.dart';
import 'package:all/timer/stop_watch_timer/stop_watch_timer.dart';
import 'package:all/timer/timer.dart';
import 'package:all/timer/timer_countdown2.dart';
import 'package:flutter/material.dart';

import 'circular_countdown_timer.dart';
import 'custom_timer.dart';

class MainTimer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              MaterialButton(
                child: Text(
                  "Timer 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return TimerPage();
                  }));
                },
              ),
              MaterialButton(
                child: Text(
                  "circular countdown timer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return CircularCountdownTimer();
                  }));
                },
              ),
              MaterialButton(
                child: Text(
                  "stop watch timer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return StopWatchTimer();
                  }));
                },
              ),
              MaterialButton(
                child: Text(
                  "custom timer ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Custom_Timer();
                  }));
                },
              ),
              MaterialButton(
                child: Text(
                  "Slide Countdown",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return ExampleSlideCountdown();
                  }));
                },
              ),
              MaterialButton(
                child: Text(
                  "timer countdown 2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return timer_countdown2();
                  }));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}