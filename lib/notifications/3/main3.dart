import 'package:all/notifications/3/local_notications_helper.dart';
import 'package:all/notifications/3/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';





class MainN2 extends StatefulWidget {

  @override
  State<MainN2> createState() => _MainN2State();
}

class _MainN2State extends State<MainN2> {
  final notifications = FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
    // final settingsAndroid = AndroidInitializationSettings('app_icon');
    // final settingsIOS = IOSInitializationSettings(
    //     onDidReceiveLocalNotification: (id, title, body, payload) =>
    //         onSelectNotification(payload!));
    //
    // notifications.initialize(
    //     InitializationSettings(android: settingsAndroid, iOS: settingsIOS),
    //     onSelectNotification: onSelectNotification);
  }


  Future onSelectNotification(String payload) async => await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage(payload: payload)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
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
              RaisedButton(
                child: Text('Show image (small)'),
                onPressed: () => showIconNotification(
                  context,
                  notifications,
                  icon: Image.asset('assets/icon.jpg'),
                  title: 'SmallImageTitle',
                  body: 'SmallImageBody',
                  id: 40,
                ),
              ),
              RaisedButton(
                child: Text('Show image (big)'),
                onPressed: () => showImageNotification(
                  context,
                  notifications,
                  picture: Image.asset('assets/picture.jpg'),
                  title: 'IconTitle',
                  body: 'IconBody',
                  id: 40,
                ),
              ),
              RaisedButton(
                child: Text('Show image (big+small)'),
                onPressed: () => showIconAndImageNotification(
                  context,
                  notifications,
                  icon: Image.asset('assets/icon.jpg'),
                  picture: Image.asset('assets/picture.jpg'),
                  title: 'IconAndImageTitle',
                  body: 'IconAndImageBody',
                  id: 40,
                ),
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
      ),
    );
  }
  Widget title(String text) => Container(
    margin: EdgeInsets.symmetric(vertical: 4),
    child: Text(
      text,
      style: Theme.of(context).textTheme.headline6,
      textAlign: TextAlign.center,
    ),
  );
}
