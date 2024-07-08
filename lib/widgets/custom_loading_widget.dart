import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingWidget extends StatelessWidget {
  final Color? color;
  final double width, height;
  final bool? isAlwaysAndroid;
  final double? borderWidth;
  const CustomLoadingWidget({super.key, this.color, this.width = double.infinity, this.isAlwaysAndroid = false, this.borderWidth, this.height = 70});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorManager.mainColor,
      highlightColor: ColorManager.offWhite,
      child: Container(
          width: width.w,
          height: height.h,
          // color: color ?? ColorManager.otherGray.withOpacity(0.3),
          decoration: BoxDecoration(
            color: color ?? ColorManager.offWhite.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
