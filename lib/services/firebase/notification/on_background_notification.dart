import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:fcm_config/fcm_config.dart';

onBackgroundMessage({required RemoteMessage message}) async {
  AppLogs.infoLog(message.data.toString(), 'Clicked push notification from Background (onBackgroundMessage)');
}
