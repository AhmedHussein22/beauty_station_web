import 'package:beauty_station_web/beauty_station.dart';
import 'package:beauty_station_web/services/services_init.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() async {
  await initServices();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const BeautyStationApp(), // Wrap your app
    ),
  );
}

Future<void> initServices() async {
  await ServicesInit().init();
}
