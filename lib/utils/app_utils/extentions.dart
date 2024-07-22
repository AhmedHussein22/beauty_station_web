
//! String Extension`
import 'package:beauty_solution_web/config/locale/locale_setup.dart';
import 'package:beauty_solution_web/resource/app_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Validation on String {
  //***************** localization ****************** */
   String tr({BuildContext? context}) {
    final currentContext = AppKeys.navigatorKey.currentContext!;
    return AppLocalizations.of(context ?? currentContext)?.translate(this) ?? this;
  }

  bool startsWithEnglishLetter() {
    if (isEmpty) {
      return false;
    }
    int firstCodeUnit = codeUnitAt(0);

    // Check if the first character is an English uppercase or lowercase letter
    return (firstCodeUnit >= 65 && firstCodeUnit <= 90) || (firstCodeUnit >= 97 && firstCodeUnit <= 122);
  }
}

//! ContextExtension
//? 1. Themes
extension ContextExtension on BuildContext {
  //************ themes *********************/
  TextStyle get displayLargeH1 => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayMediumH2 => Theme.of(this).textTheme.displayMedium!;
  TextStyle get displaySmallH3 => Theme.of(this).textTheme.displaySmall!;

  TextStyle get bodyLargeB1 => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyLargeB2 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodyLargeB3 => Theme.of(this).textTheme.bodySmall!;

  TextStyle get titleMediumS2 => Theme.of(this).textTheme.titleMedium!;
  TextStyle get labelLargeL1 => Theme.of(this).textTheme.labelLarge!;
 //**************** Navigation ****************** */
    Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();

  


}




//! numbers

extension AppNumberExtension on num {
  //************ Padding *********************/
  EdgeInsets get allPadding => EdgeInsets.all(toDouble().r);
  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: toDouble().h);
  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: toDouble().w);

  //****************  borderRadius ****************** */
  BorderRadius get borderRadius => BorderRadius.circular(toDouble().r);
 // SmoothBorderRadius get smoothBorderRadius => SmoothBorderRadius(cornerRadius: toDouble().r, cornerSmoothing: .5);

  //***************  dividers ****************** */
  Widget get verticalDivider => VerticalDivider(width: toDouble().w, thickness: 1);
  Widget get horizontalDivider => Divider(height: toDouble().h, thickness: 1);


}



//! WidgetExtension
extension WidgetExtension on Widget {
  //************ Padding *********************/
  Widget horizontalPadding(double padding) => Padding(padding: EdgeInsets.symmetric(horizontal: padding.w), child: this);
  Widget verticalPadding(double padding) => Padding(padding: EdgeInsets.symmetric(vertical: padding.h), child: this);
  Widget allPadding(double padding) => Padding(padding: EdgeInsets.all(padding.r), child: this);
  Widget onlyPadding({double tPadding = 0, double bPadding = 0, double rPadding = 0, double lPadding = 0}) => Padding(padding: EdgeInsets.only(bottom: bPadding.h, left: lPadding.w, right: rPadding.w, top: tPadding.h), child: this);
  //****************  center ****************** */
  Widget center() => Center(child: this);
}
//************ */ DateTime Extension *********************/
extension DateTimeExtension on DateTime {
  String timeAgo({bool numericDates = true}) {
    final date2 = DateTime.now();
    final difference = date2.difference(this);

    if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? "مند اسبوع" : 'الاسبوع الماضي';
    } else if (difference.inDays >= 2) {
      return 'منذ ${difference.inDays} يوم';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? 'منذ 1 يوم' : 'الامس';
    } else if (difference.inHours >= 2) {
      return 'منذ ${difference.inHours} ساعة';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? 'منذ 1 ساعة' : 'ساعة واحدة مضت';
    } else if (difference.inMinutes >= 2) {
      return 'منذ ${difference.inMinutes} دقيقة';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? 'منذ دقية' : 'دقيقة واحدة مضت';
    } else if (difference.inSeconds >= 3) {
      return 'منذ ${difference.inSeconds} ثانية';
    } else {
      return 'الان';
    }
  }
}
