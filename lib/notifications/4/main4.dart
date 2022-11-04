import 'package:all/notifications/4/NotificationsApi2.dart';
import 'package:all/notifications/4/test.dart';
import 'package:flutter/material.dart';

class MainN3 extends StatefulWidget {
  @override
  State<MainN3> createState() => _MainN3State();
}

class _MainN3State extends State<MainN3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationsApi2.init(i: true);
    NotificationsLiset();
  }
  NotificationsLiset()=>NotificationsApi2.on_notifications.stream.listen((payload) {
    if(payload!=null && payload.isNotEmpty){
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Test(payload: payload)));
    }
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Notifications')),
          SizedBox(height: 20,),
          ElevatedButton(
            child: Text('Simple Notifications'),
            onPressed: () async{
              NotificationsApi2.show_notifications(
                title: "toty",
                body: "totyttttttttttttt",
                payload: "mostafa"
              );
            },
          ),
          ElevatedButton(
            child: Text('Schedule  Notifications'),
            onPressed: () async{
              NotificationsApi2.Schedule_notifications(
                  title: "toty Schedule",
                  body: "totyttttttttttttt Schedule_notifications",
                  payload: "mostafa",
                  time:DateTime.now().add(Duration(seconds: 5)),
              );
            },
          ),
          ElevatedButton(
            child: Text('Every Day Notifications'),
            onPressed: () async{
              NotificationsApi2.EveryDay_notifications(
                title: "toty EveryDay",
                body: "totyttttttttttttt Schedule_notifications",
                payload: "mostafa",
              );
            },
          ),
          ElevatedButton(
            child: Text('Schedule Weekly Notifications'),
            onPressed: () async{
              NotificationsApi2.Weekly_notifications(
                title: "toty Weekly",
                body: "totyttttttttttttt Schedule_notifications",
                payload: "mostafa",
                time:DateTime.now().add(Duration(seconds: 5)),
              );
            },
          ),
          ElevatedButton(
            child: Text('Remove Notifications'),
            onPressed: () async{
              NotificationsApi2.RemoveNotifications();
            },
          ),
        ],
      ),
    );
  }
}
