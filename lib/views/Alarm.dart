

import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Alarm extends StatefulWidget {

  @override
  State<Alarm> createState() => _State();
}

class _State extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alarm clock '),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(25),
              child: TextButton(
                child: const Text(
                  'Create alarm at 23:59',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FlutterAlarmClock.createAlarm(4, 41);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: TextButton(
                child: const Text(
                  'Show alarms',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FlutterAlarmClock.showAlarms();
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: TextButton(
                child: const Text(
                  'Create timer for 42 seconds',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FlutterAlarmClock.createTimer(20);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: TextButton(
                child: const Text(
                  'Show Timers',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FlutterAlarmClock.showTimers();
                },
              ),
            ),
          ])),
    );
  }
}



class Alarm2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Alarm2> {
  FlutterLocalNotificationsPlugin localNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  initializeNotifications() async {
    var initializeAndroid = AndroidInitializationSettings('ic_launcher');
    var initializeIOS = IOSInitializationSettings();
    var initSettings = InitializationSettings(android: initializeAndroid, iOS: initializeIOS);
    await localNotificationsPlugin.initialize(initSettings);
  }

  @override
  void initState() {
    super.initState();
    initializeNotifications();
  }

  Future singleNotification(
      DateTime datetime, String message, String subtext, int hashcode,
      {String? sound}) async {
    var androidChannel = AndroidNotificationDetails(
      'channel-id',
      'channel-name',
      channelDescription: 'channel-description',
      importance: Importance.max,
      priority: Priority.max,
    );

    var iosChannel = IOSNotificationDetails();
    var platformChannel = NotificationDetails(android: androidChannel, iOS: iosChannel);
    localNotificationsPlugin.schedule(
        hashcode, message, subtext, datetime, platformChannel,
        payload: hashcode.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification/Alarm Example'),
      ),
      body: Center(
        child: Container(
          child: Text('Notification App'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.notifications),
        onPressed: () async {
          DateTime now = DateTime.now().toUtc().add(
            Duration(seconds: 10),
          );
          await singleNotification(
            now,
            "Notification",
            "This is a notification",
            98123871,
          );
        },
      ),
    );
  }
}

