import 'package:beamer/beamer.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  final double width;
  final bool secPage;
  const Header({super.key, required this.width, this.secPage = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: width,
      decoration: BoxDecoration(
        color: ColorManager.mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          30.horizontalSpace,
          if (secPage)
            InkWell(
              onTap: () {
                context.beamToNamed('/Home');
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: ColorManager.neutralWhite,
                size: 25.sp,
              ).paddingAll(8),
            )
        ],
      ),
    ).paddingAll(12);
  }
}
