


import 'package:all/notifications/1/NotificationsApi.dart';
import 'package:all/notifications/1/secend.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late final NotificationsApi n;
  @override
  void initState() {
    // TODO: implement initState
    n=NotificationsApi();
    n.intialize();
    NotificationsLiset();
    super.initState();

  }
  NotificationsLiset()=>n.on_notifications.stream.listen((payload) {
    if(payload!=null && payload.isNotEmpty){
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Screen()));
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
            await n.show_notifications(id: 0, title: "Simple Notifications",
                body: "Simple Notifications test");
            },
          ),
          ElevatedButton(
            child: Text('Schedule Notifications'),
            onPressed: () async{
              await n.show_Schedule_notifications(
                  id: 0, title: "Schedule Notifications",
                  payload:'payload Notifications',
                  body: "Schedule Notifications test",
                  s: 3);
            },
          ),
          ElevatedButton(
            child: Text('payload Notifications'),
            onPressed: () async{
              n.show_payload_notifications(
                  id: 0, title: "payload Notifications",
                  body: "payload Notifications test",payload:'payload Notifications');
            },
          ),
        ],
      ),
    );
  }
}