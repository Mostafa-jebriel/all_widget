import 'package:all/notifications/2/local_notications_helper.dart';
import 'package:all/notifications/2/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class MainN1 extends StatefulWidget {
  @override
  State<MainN1> createState() => _MainPageState();
}

class _MainPageState extends State<MainN1> {
  final notifications = FlutterLocalNotificationsPlugin();

  // @override
  // void initState() async{
  //   super.initState();
  //
  //   final settingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
  //   final settingsIOS = IOSInitializationSettings(
  //       onDidReceiveLocalNotification: (id, title, body, payload) =>
  //           onSelectNotification(payload!));
  //
  //   await notifications.initialize(
  //       InitializationSettings(android: settingsAndroid, iOS: settingsIOS),
  //       onSelectNotification: (payload) async =>onSelectNotification(payload!));
  // }

  Future onSelectNotification(String payload) async => await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage(payload: payload)),
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            title('Basics'),
            RaisedButton(
              child: Text('Show notification'),
              onPressed: () => showOngoingNotification(notifications,
                  title: 'Tite', body: 'Body'),
            ),
            RaisedButton(
              child: Text('Replace notification'),
              onPressed: () => showOngoingNotification(notifications,
                  title: 'ReplacedTitle', body: 'ReplacedBody'),
            ),
            RaisedButton(
              child: Text('Other notification'),
              onPressed: () => showOngoingNotification(notifications,
                  title: 'OtherTitle', body: 'OtherBody', id: 20),
            ),
            const SizedBox(height: 32),
            title('Feautures'),
            RaisedButton(
              child: Text('Silent notification'),
              onPressed: () => showSilentNotification(notifications,
                  title: 'SilentTitle', body: 'SilentBody', id: 30),
            ),
            const SizedBox(height: 32),
            title('Cancel'),
            RaisedButton(
              child: Text('Cancel all notification'),
              onPressed: notifications.cancelAll,
            ),
          ],
        ),
      ),
    );
  }

  Widget title(String text) => Container(
    margin: EdgeInsets.symmetric(vertical: 4),
    child: Text(
      text,
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    ),
  );
}
