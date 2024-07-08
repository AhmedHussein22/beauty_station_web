import 'package:beauty_station_web/data/local_storage/hive_storage.dart';
import 'package:beauty_station_web/services/setup_dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesInit {
  Future<void> init() async {
    ///** ****** ensure flutter Initialized ******** */
    WidgetsFlutterBinding.ensureInitialized();

    ///** ****** set Preferred Orientations to portrait only ******** */
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    //* ****** set ScreenUtil setup to fix text size in realse mode ******** */
    await ScreenUtil.ensureScreenSize();

    ///** ****** hive stroge ******** */
    await HiveStorage.init();

    ///** ****** setup  service locator for DI ******** */
    setupLocator();
    // ***********Firebase.initializeApp**************
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    // await FCMConfig.instance.init(
    //   options: DefaultFirebaseOptions.currentPlatform,
    //   defaultAndroidForegroundIcon:
    //       '@mipmap/ic_launcher', //default is @mipmap/ic_launcher
    //   defaultAndroidChannel: const AndroidNotificationChannel(
    //     'high_importance_channel', // same as value from android setup
    //     'Fcm config',
    //     importance: Importance.max,
    //   ),
    //   sound: true,
    // );
    // await NotificationFirebase().initializeNotificationSetting();
    // AppLogs.debugLog(
    //     '${HiveStorage.get(HiveKeys.firbaseToken)}', 'Firebase Token');
    // if (HiveStorage.get(HiveKeys.firbaseToken) == null) {
    //   await FCMConfig.instance.messaging.getToken().then((token) async {
    //     AppLogs.debugLog('$token', 'Firebase Token');
    //     await HiveStorage.set(HiveKeys.firbaseToken, token);
    //   });
    // }
  }
}
