import 'dart:io';

import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
class HelperFunctions {
  static bool isTablet = 1.sw > 600 ? true : false;
  dynamic definePlatform(var p1, var p2) => (Platform.isIOS || Platform.isAndroid || Platform.isFuchsia) ? p1 : p2;
  static launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      //  UIGlobal.showCustomTost(message: 'Could not launch $url');
      throw 'Could not launch $url';
    }
  }

  static openWhatsapp(String whatsapp) async {
    String url = "https://wa.me/$whatsapp/?text=${Uri.encodeFull("Hello World !! Hey There")}";
    final Uri whatsappURlAndroid = Uri.parse(url);

    // android , web
    if (await canLaunchUrl(whatsappURlAndroid)) {
      await launchUrl(whatsappURlAndroid, mode: LaunchMode.externalApplication);
    } else {
      // Helpers.showSnackBar(message: 'Could not launch $url');
    }
  }

  static Future<DateTime?> showDateTime(BuildContext context, {DateTime? initialDate}) async {
    //DateTime initialData = initialDate ?? defineInitialDate(workDays, DateTime.now());

    try {
      final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
        initialDate: initialDate ?? DateTime.now(),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: const ColorScheme.light(
                // change the border color
                primary: ColorManager.offWhite,
                onSurface: ColorManager.mainColor,
                surface: ColorManager.mainColor,
              ),
              // button colors
              buttonTheme: const ButtonThemeData(
                colorScheme: ColorScheme.light(primary: ColorManager.mainColor),
              ),
            ),
            child: child!,
          );
        },
      );
      if (picked != null) {
        AppLogs.successLog("${picked.year}-${picked.month}-${picked.day}", "Date From");
        return picked;
      } else {
        return null;
      }
    } catch (e) {
      AppLogs.errorLog(e.toString(), "Error in showDateTime");
      rethrow;
      //return null;
    }
  }

  //* ******  show get First Letters **********
  static String getFirstLetters(String name) {
    if (name.isEmpty) return '';

    List<String> nameParts = name.split(' ');
    String initials = '';

    for (String part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0];
      }
    }

    return initials;
  }
}

Future<TimeOfDay?> showPickerTime(BuildContext context) async {
  try {
    TimeOfDay timeFrom = TimeOfDay.now();

    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: timeFrom.replacing(hour: timeFrom.hourOfPeriod),
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: ColorManager.offWhite,
              onSurface: ColorManager.mainColor,
              surface: ColorManager.mainColor,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(primary: ColorManager.mainColor),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      // DateTime date = DateTime.now();
      // String second = date.second.toString().padLeft(2, '0');
      // List timeSplit = picked.format(context).split(' ');
      // String formattedTime = timeSplit[0];
      // String time = '$formattedTime:$second';
      // debugPrint(time); //
      return picked;
    } else {
      return null;
    }
  } catch (e) {
    debugPrint(e.toString());
    return null;
  }
}
