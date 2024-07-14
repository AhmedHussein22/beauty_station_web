import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ServicesInit extends GetxService {
  Future<ServicesInit> init() async {
    //****************** set Preferred Orientations **************** */ */
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    WidgetsFlutterBinding.ensureInitialized();
    return this;
  }
}
