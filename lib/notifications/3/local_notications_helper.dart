import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meta/meta.dart';

import 'utils.dart';


Future<NotificationDetails> _imageAndIcon(
    BuildContext context, Image picture, Image icon) async {
  final iconPath = await saveImage(context, icon);
  final picturePath = await saveImage(context, picture);

  // final bigPictureStyleInformation = BigPictureStyleInformation(
  //   // picturePath,
  //   // BitmapSource.FilePath,
  //   // largeIcon: iconPath,
  //   //largeIconBitmapSource: BitmapSource.FilePath,
  // );

  final androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'big text channel id',
    'big text channel name',
    channelDescription: 'big text channel description',
   // style: AndroidNotificationStyle.bigPicture,
    //styleInformation: bigPictureStyleInformation,
  );
  return NotificationDetails(android: androidPlatformChannelSpecifics);
}

Future showIconAndImageNotification(
  BuildContext context,
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  required Image picture,
  required Image icon,
  int id = 0,
}) async =>
    notifications.show(
        id, title, body, await _imageAndIcon(context, picture, icon));

Future<NotificationDetails> _image(BuildContext context, Image picture) async {
  final picturePath = await saveImage(context, picture);

  // final bigPictureStyleInformation = BigPictureStyleInformation(
  //   picturePath,
  //   BitmapSource.FilePath,
  // );

  final androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'big text channel id',
    'big text channel name',
    channelDescription: 'big text channel description',
    //style: AndroidNotificationStyle.BigPicture,
    //styleInformation: bigPictureStyleInformation,
  );
  return NotificationDetails(android: androidPlatformChannelSpecifics);
}

Future showImageNotification(
  BuildContext context,
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  required Image picture,
  int id = 0,
}) async =>
    notifications.show(id, title, body, await _image(context, picture));

Future<NotificationDetails> _icon(BuildContext context, Image icon) async {
  final iconPath = await saveImage(context, icon);

  final androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'big text channel id',
    'big text channel name',
    channelDescription:'big text channel description',
   // largeIcon: iconPath,
    //largeIconBitmapSource: BitmapSource.FilePath,
  );
  return NotificationDetails(android: androidPlatformChannelSpecifics);
}

Future showIconNotification(
  BuildContext context,
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  required Image icon,
  int id = 0,
}) async =>
    notifications.show(id, title, body, await _icon(context, icon));

NotificationDetails get _noSound {
  final androidChannelSpecifics = AndroidNotificationDetails(
    'silent channel id',
    'silent channel name',
    channelDescription:'silent channel description',
    playSound: false,
  );
  final iOSChannelSpecifics = IOSNotificationDetails(presentSound: false);

  return NotificationDetails(android: androidChannelSpecifics, iOS: iOSChannelSpecifics);
}

Future showSilentNotification(
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  int id = 0,
}) =>
    _showNotification(notifications,
        title: title, body: body, id: id, type: _noSound);

NotificationDetails get _ongoing {
  final androidChannelSpecifics = AndroidNotificationDetails(
    'your channel id',
    'your channel name',
    channelDescription: 'your channel description',
    importance: Importance.max,
    priority: Priority.high,
    ongoing: true,
    autoCancel: false,
  );
  final iOSChannelSpecifics = IOSNotificationDetails();
  return NotificationDetails(android: androidChannelSpecifics, iOS: iOSChannelSpecifics);
}

Future showOngoingNotification(
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  int id = 0,
}) =>
    _showNotification(notifications,
        title: title, body: body, id: id, type: _ongoing);

Future _showNotification(
  FlutterLocalNotificationsPlugin notifications, {
  required String title,
  required String body,
  required NotificationDetails type,
  int id = 0,
}) =>
    notifications.show(id, title, body, type);
