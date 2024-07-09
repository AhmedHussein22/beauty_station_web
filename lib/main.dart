import 'package:beauty_station_web/beauty_station.dart';
import 'package:beauty_station_web/services/services_init.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(
    const BeautyStationApp(),
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => ServicesInit().init());
}
