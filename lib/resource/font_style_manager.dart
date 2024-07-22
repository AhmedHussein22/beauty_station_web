import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/resource/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontStyleManager {
  //********* regular style  *********//
  //********* Black *********//
  static TextStyle captionblack = TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeightManager.regular,
      color: const Color.fromRGBO(17, 25, 40, 1));
  static TextStyle subtitle2Black = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.black,
  );
  static TextStyle subtitle2BlackwithHeight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.black,
    height: 2.5,
  );
  static TextStyle h4Black = TextStyle(
    fontSize: 33.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.black,
  );
  //********* White *********//

  //********* red  *********//

  //********* gray  *********//
  // static TextStyle body2GrayR = TextStyle(
  //   fontSize: 12.sp,
  //   fontWeight: FontWeightManager.regular,
  //   color: ColorManager.neutral400,
  // );
  // static TextStyle subtitle2Gary = TextStyle(
  //   fontSize: 14.sp,
  //   fontWeight: FontWeightManager.regular,
  //   color: ColorManager.neutral400,
  // );

  //********* medium style  *********//
  //********* Black *********//
  static TextStyle body2BlackM = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );
  static TextStyle subtitle1BlackM = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );
  static TextStyle subtitle2BlackM = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );
  static TextStyle h6BlackM = TextStyle(
    fontSize: 20.sp,
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );
  static TextStyle h5BlackM = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );
  static TextStyle h3BlackM = TextStyle(
    fontSize: 47.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.black,
  );

  //********* White *********//

  //********* red  *********//
  // static TextStyle subtitle2RedM = TextStyle(
  //   fontSize: 14.sp,
  //   fontWeight: FontWeightManager.medium,
  //   color: ColorManager.otherRed2,
  // );

  //********* gray  *********//
  // static TextStyle body2GrayM = TextStyle(
  //   fontSize: 12.sp,
  //   fontWeight: FontWeightManager.medium,
  //   color: ColorManager.neutral400,
  // );
  // static TextStyle subtitle2GaryM = TextStyle(
  //   fontSize: 14.sp,
  //   fontWeight: FontWeightManager.medium,
  //   color: ColorManager.neutral400,
  // );
  //********* semi bold style  *********//
  //********* Black *********//
  static TextStyle body1BlackSB = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.black,
  );
  static TextStyle subtitle2BlackSB = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.black,
  );

  //********* White *********//

  //********* red  *********//

  //********* bold style  *********//

  //********* gray  *********//
  // static TextStyle body2GraySB = TextStyle(
  //   fontSize: 12.sp,
  //   fontWeight: FontWeightManager.semiBold,
  //   color: ColorManager.neutral400,
  // );
  //********* Black *********//
  static TextStyle body2BlackB = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightManager.bold,
      color: ColorManager.black,);
  static TextStyle subtitle1BlackB = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.black,
  );
  static TextStyle h6BlackB = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.black,
  );
  static TextStyle h5BlackB = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.black,
  );
  static TextStyle h3BlackB = TextStyle(
    fontSize: 47.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.black,
  );
  //********* White *********//
  // static TextStyle subtitle1WhitekB = TextStyle(
  //   fontSize: 16.sp,
  //   fontWeight: FontWeightManager.bold,
  //   color: ColorManager.neutralWhite,
  // );

  //********* red  *********//

  //********* gray  *********//
  // static TextStyle body2GrayB = TextStyle(
  //   fontSize: 12.sp,
  //   fontWeight: FontWeightManager.bold,
  //   color: ColorManager.neutral400,
  // );
}
