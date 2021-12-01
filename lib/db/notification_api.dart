// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors, avoid_function_literals_in_foreach_calls, slash_for_doc_comments

/**********************************************************************
 *
 *  notification_api.dart
 * 
 *  Create a notification api for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'package:bobatea/model/storage_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

//Main class for notification
class NotificationApi {
  //Define notification plugin
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Define initial detail for notification
  static const AndroidNotificationDetails andriodNotificationDetials =
      AndroidNotificationDetails(
          'kitchen_noti_001', 'แจ้งเตือนทั่วไป', 'ก็แจ้งเตือนทั่วไปอะ',
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker');

  //Function for initialize notification
  static Future init() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  //Function for show notification
  static Future showNotification(Storage storage) async {
    const NotificationDetails platformChannelDetails = NotificationDetails(
      android: andriodNotificationDetials,
    );

    await flutterLocalNotificationsPlugin.show(
        storage.id,
        "Your Ingredient going to expire today!",
        storage.name,
        platformChannelDetails);
  }

  //Function for set shedule for storage to notice
  static Future scheduleNotification(Storage storage) async {
    const NotificationDetails platformChannelDetails = NotificationDetails(
      android: andriodNotificationDetials,
    );

    if (storage.expirationDate.isAfter(DateTime.now())) {
      await flutterLocalNotificationsPlugin.zonedSchedule(
          storage.id,
          "Your Ingredient going to expire today!", //title
          storage.name, //body
          tz.TZDateTime.from(storage.expirationDate, tz.local),
          platformChannelDetails,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime);
    }
  }

  //Function for schedule all storage in database to notice
  static Future setUpSchedule(List<Storage> storage) async {
    storage.forEach((item) async {
      await scheduleNotification(item);
    });
  }
}
