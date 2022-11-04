
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
class NotificationsApi2{
  NotificationsApi2();
  static final notifications=FlutterLocalNotificationsPlugin();
  static final  on_notifications=BehaviorSubject<String?>();


  static  Future notificationDetails()async{
    const AndroidNotificationDetails android= AndroidNotificationDetails(
        'channel_id',
        'channel_name',
        channelDescription: 'description',
        importance: Importance.max,
        priority: Priority.max,
        playSound: true
    );
    const IOSNotificationDetails iOS= IOSNotificationDetails();
    return const NotificationDetails(android: android,iOS: iOS);
  }

  static  Future init({bool i=false})async{

    const AndroidInitializationSettings android= AndroidInitializationSettings('@mipmap/ic_launcher');
    IOSInitializationSettings iOS=IOSInitializationSettings(
      requestAlertPermission: true,
      requestSoundPermission: true,
      requestBadgePermission: true,
      //onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final InitializationSettings setting=InitializationSettings(android: android,iOS:iOS );
    await notifications.initialize(
      setting,
    onSelectNotification: (pa) async {
        on_notifications.add(pa);
    },
    );
    if(i){
      tz.initializeTimeZones();
      final local=await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(local));
    }
  }

  static Future show_notifications({int id=0,  String? title, String? body, String? payload
  })async{
    await notifications.show(id, title, body, await notificationDetails(),payload: payload);
  }

  static Future Schedule_notifications({int id=0,  String? title, String? body, String? payload,required DateTime time
  })async{
    await notifications.zonedSchedule(
        id, title, body,
        tz.TZDateTime.from(time, tz.local),
        await notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime

    );
  }

  static Future EveryDay_notifications({int id=0,  String? title, String? body, String? payload
  })async{
    await notifications.zonedSchedule(
        id, title, body,
        Day(Time(8,18)),
        await notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        matchDateTimeComponents: DateTimeComponents.time,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime

    );
  }

  static Future Weekly_notifications({int id=0,  String? title, String? body, String? payload,required DateTime time
  })async{
    await notifications.zonedSchedule(
        id, title, body,
        Weekly(Time(8,15), days:[DateTime.sunday]),
        await notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime

    );
  }

  static Future RemoveNotifications()async{
   await notifications.cancelAll;
  }

  static tz.TZDateTime Day(Time t){
    final now=tz.TZDateTime.now(tz.local);
    final time=tz.TZDateTime(tz.local,now.year,now.month,now.day,
    now.hour,now.minute,now.second);

    return time.isBefore(now)?time.add(Duration(days: 1)):time;

  }

  static tz.TZDateTime Weekly(Time t,{required List<int> days}){
    tz.TZDateTime week=Day(t);
    while(!days.contains(week.weekday)){
      week=week.add(Duration(days: 1));
    }
    return week;

  }
}