import 'package:all/notifications/1/Notifications.dart';
import 'package:all/notifications/2/main1.dart';
import 'package:all/notifications/3/main3.dart';
import 'package:all/notifications/4/main4.dart';
import 'package:flutter/material.dart';

class MainNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Notifications'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
              padding: EdgeInsets.all(5),
              child:const Text(
                "Notifications 1",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Notifications();
                }));
              }),
          RaisedButton(
              padding: EdgeInsets.all(5),
              child:const Text(
                "Notifications 2",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return MainN1();
                }));
              }),
          RaisedButton(
              padding: EdgeInsets.all(5),
              child:const Text(
                "Notifications 3",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return MainN2();
                }));
              }),
          RaisedButton(
              padding: EdgeInsets.all(5),
              child:const Text(
                "Notifications 4",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return MainN3();
                }));
              }),
        ],
      ),
    );
  }
}
