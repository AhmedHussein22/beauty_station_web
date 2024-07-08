import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final bool isActive, withGradien;
  final bool textWithImage, isDark;
  final bool loading;
  final Widget? iconWidget;
  final Color? btnColor, borderColor, disActiveColor;
  final double? btnTextSize;
  final Color? btnTextColor;
  final Color? loadingColor;
  final Gradient? gradient;
  final FontWeight? btnTextFontWeight;
  final double? btnWidth, borderWidth, borderRadius, btnHeight, spaceBetween, marginVertical, marginHorizontal, paddingVertical, paddingHorizontal;

  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.btnColor,
    this.disActiveColor = ColorManager.mainColor,
    this.withGradien = true,
    this.loading = false,
    this.textWithImage = false,
    this.isActive = true,
    this.btnHeight,
    this.btnTextSize,
    this.btnTextColor,
    this.iconWidget,
    this.gradient,
    this.btnTextFontWeight,
    this.borderColor,
    this.borderWidth,
    this.btnWidth,
    this.spaceBetween,
    this.marginVertical,
    this.marginHorizontal,
    this.borderRadius,
    this.isDark = true,
    this.loadingColor,
    this.paddingVertical,
    this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading || !isActive ? null : onTap,
      child: Container(
        // constraints: BoxConstraints(
        //   minHeight: btnHeight ?? (1.sw > 600 ? 60.h : 50.h),
        //   maxHeight: btnHeight ?? (1.sw > 600 ? 65.h : 55.h),
        // ),
        //  height: btnHeight ?? (1.sw > 600 ? 60.h : 48.h),
        width: btnWidth ?? double.infinity,
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 24.w, vertical: paddingVertical ?? 12.h),
        margin: EdgeInsets.symmetric(vertical: marginVertical ?? 8.h, horizontal: marginHorizontal ?? 0),
        decoration: BoxDecoration(
          color: isActive ? (btnColor ?? ColorManager.mainColor) : (disActiveColor ?? ColorManager.mainColor),
          borderRadius: borderRadius == null ? 12.smoothBorderRadius : borderRadius!.smoothBorderRadius,
          border: Border.all(
            width: borderWidth == null ? 0 : borderWidth!,
            color: borderColor == null ? Colors.transparent : borderColor!,
          ),
        ),
        child: Center(
          child: loading
              ? SpinKitFadingCircle(
                  color: loadingColor ?? (isDark ? ColorManager.offWhite : ColorManager.mainColor),
                  size: 26.r,
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (iconWidget != null) ...[
                      iconWidget!,
                      10.horizontalSpace,
                    ],
                    CustomText(
                      title: text,
                      color: btnTextColor ?? (isActive ? ColorManager.offWhite : ColorManager.mainColor),
                      size: btnTextSize ?? 16,
                      fontWeight: btnTextFontWeight ?? FontWeight.w700,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
