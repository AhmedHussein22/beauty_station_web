import 'package:beauty_station_web/resource/app_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void pushNewScreen(Widget widget) {
  AppKeys.navigatorKey.currentState!.push(CupertinoPageRoute(builder: (context) => widget));
}

void pushNewScreenWithCubit(Widget screen, StateStreamableSource<Object?> cubit) {
  Navigator.push(
    AppKeys.navigatorKey.currentContext!,
    CupertinoPageRoute(
      builder: (_) => BlocProvider(create: (_) => cubit, child: screen),
    ),
  );
}

void pushReplacementScreen(Widget widget) {
  AppKeys.navigatorKey.currentState!.pushReplacement(CupertinoPageRoute(builder: (context) => widget));
}

void pushAndRemoveUntilScreen(Widget screen) {
  AppKeys.navigatorKey.currentState!.pushAndRemoveUntil(MaterialPageRoute(builder: (context) => screen), (Route<dynamic> route) => false);
}

void popRoute() {
  if (AppKeys.navigatorKey.currentState!.canPop()) {
      AppKeys.navigatorKey.currentState!.pop();
  }
}

void pushReplacementScreenWithoutAnimation(Widget widget) {
  AppKeys.navigatorKey.currentState!.pushReplacement(
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => widget,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    ),
  );
}

void pushNewScreenWithoutAnimation(Widget widget) {
  AppKeys.navigatorKey.currentState!.push(
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => widget,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    ),
  );
}
