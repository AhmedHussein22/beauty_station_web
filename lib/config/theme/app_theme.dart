import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  ThemeData appLightTheme() {
    return ThemeData(
      useMaterial3: true,

      unselectedWidgetColor: ColorManager.offWhite.withOpacity(0.55),
      primaryColor: ColorManager.offWhite,

      dividerColor: ColorManager.neutral200,

      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: ColorManager.neutral950,
            primary: ColorManager.offWhite,
            surface: ColorManager.neutralWhite,
          ),
      dialogTheme: const DialogTheme(
        backgroundColor: ColorManager.neutralWhite,
        surfaceTintColor: Colors.transparent,
      ),

      hintColor: ColorManager.neutral950,
      secondaryHeaderColor: ColorManager.neutral950,
      splashColor: Colors.transparent,
      scaffoldBackgroundColor: ColorManager.offWhite,
      fontFamily: AppStrings.fontFamily,

      listTileTheme: ListTileThemeData(
        titleTextStyle: TextStyle(
          color: ColorManager.offWhite,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        visualDensity: VisualDensity.standard,
        selectedTileColor: ColorManager.neutralWhite,
        tileColor: ColorManager.offWhite,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        dense: true,
        horizontalTitleGap: 0,
        minLeadingWidth: 25.w,
        //contentPadding: 20.hPadding,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ColorManager.offWhite,
        refreshBackgroundColor: ColorManager.neutral950,
      ),
      // app Bar Theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: ColorManager.otherGreen0,
          fontSize: 20.sp,
        ),
      ),
      // icon Theme
      iconTheme: IconThemeData(
        size: 26.r,
        color: ColorManager.neutral900,
      ),

      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
      // divider Theme
      dividerTheme: const DividerThemeData(
        thickness: 2,
        indent: 0,
        endIndent: 0,
        color: ColorManager.neutral200,
        space: 1,
      ),
      cardTheme: CardTheme(
        color: ColorManager.neutral950,
        shadowColor: ColorManager.neutral900.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 6,
      ),

      // text Theme
      textTheme: TextTheme(
        //// ! semibold black 18 h3
        displaySmall: TextStyle(fontSize: 37.sp, fontWeight: FontWeight.w500),

        //// ! semibold kGreyColor 16 h4
        displayMedium: TextStyle(fontSize: 33.sp, fontWeight: FontWeight.w400),

        //// ! semibold kGreyColor 16 h5
        headlineSmall: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),

        //// ! semibold kGreyColor 16 h6
        titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        // ! semibold kGreyColor 16 s1
        titleMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        // ! semibold kGreyColor 16 s2

        titleSmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        // ! semibold kGreyColor 16 b1
        bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
        // ! semibold kGreyColor 16 b2
        bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        // ! semibold kGreyColor 16 caption
        bodySmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        // ! semibold kGreyColor 16 button
        labelLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        // ! semibold kGreyColor 16 overline
        labelSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}
