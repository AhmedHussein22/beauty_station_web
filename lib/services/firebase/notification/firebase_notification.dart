import 'package:beauty_station_web/data/local_storage/hive_storage.dart';
import 'package:beauty_station_web/services/firebase/notification/on_background_notification.dart';
import 'package:beauty_station_web/services/firebase/notification/on_message_opened_app.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:flutter/material.dart';

class NotificationFirebase {
  Future<void> initializeNotificationSetting() async {
    await getMainNotificationHandel();
  }

  //***************** init firbase token ****************** */
  Future<void> reInitFirebaseToken() async {
    await FCMConfig.instance.messaging.deleteToken();
    await FCMConfig.instance.messaging.getToken().then((token) async {
      debugPrint('FCM Token================>: $token');
      await HiveStorage.set(HiveKeys.firebaseToken, token ?? '');
    });
  }

  //***************** getMainNotificationHandel ****************** */

  Future<void> getMainNotificationHandel() async {
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    //***************** If your own application is in the background ****************** */
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.notification != null) {
        onBackgroundMessage(message: message);
      }
    });

    //***************** If your own application is terminated ****************** */
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    onMessageOpenedApp(
      message: initialMessage,
    );
  }
}
