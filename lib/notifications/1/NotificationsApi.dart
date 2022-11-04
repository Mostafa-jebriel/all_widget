
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotificationsApi{
  NotificationsApi();
  static final notifications=FlutterLocalNotificationsPlugin();
  final BehaviorSubject on_notifications=BehaviorSubject<String?>();


  Future<void> intialize()async{
    tz.initializeTimeZones();
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
      onSelectNotification: (payload) async =>onSelectNotification(payload),
    );
  }
  void onSelectNotification(String? payload){
    if(payload!=null && payload.isNotEmpty){
      on_notifications.add(payload);
    }
  }

  void onDidReceiveLocalNotification(int id, String title, String body, String payload) {
    print('id $id');
  }

  Future<NotificationDetails> notificationDetails()async{
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

  Future<void> show_notifications({required int id, required String?title, required String?body,
  })async{
    final details=await notificationDetails();
    await notifications.show(id, title, body, details,);
  }

  Future<void> show_Schedule_notifications({
    required int id, required String?title,
    required String?body,required int s,required String? payload
  })async{
    final details=await notificationDetails();
    await notifications.zonedSchedule(
      id, title, body,
      tz.TZDateTime.from(DateTime.now().add(Duration(seconds: s)),tz.local),
      details,
      androidAllowWhileIdle: true,
        payload: payload,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
    );
  }

  Future<void> show_payload_notifications({
    required int id, required String?title,
    required String?body,required String? payload,
  })async{
    final details=await notificationDetails();
    await notifications.show(
        id, title, body,
        details, payload: payload
    );
  }



}