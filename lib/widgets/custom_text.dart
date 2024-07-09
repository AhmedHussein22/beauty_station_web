import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final Color? color;
  final double size;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double? letterSpacing;
  final double? textHeight;
  final bool underLine;
  final String fontFamily;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;
  const CustomText({
    super.key,
    this.title,
    this.color = ColorManager.mainColor,
    this.size = 16,
    this.fontFamily = AppStrings.fontFamily,
    this.letterSpacing,
    this.fontWeight = FontWeight.w500,
    this.textHeight,
    this.maxLines,
    this.underLine = false,
    this.textAlign = TextAlign.start,
    this.textOverflow,
    this.textDirection,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      textDirection: textDirection,
      //textScaleFactor: 0.7,
      style: textStyle ??
          TextStyle(
            decoration:
                underLine ? TextDecoration.underline : TextDecoration.none,
            fontSize: size.sp,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            height: textHeight ?? 0,
            color: color,
          ),
    );
  }
}
