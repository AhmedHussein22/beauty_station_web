import 'package:beauty_station_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ServicesInit extends GetxService {
  Future<ServicesInit> init() async {
    //****************** set Preferred Orientations **************** */ */
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
   await WidgetsFlutterBinding.ensureInitialized();
    return this;
  }
}
