import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          secPage
              ? InkWell(
                  onTap: () {
                    AppLogs.infoLog('Main Controller Back to home');
                    context.beamToNamed('/Home');
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorManager.black,
                    size: 25.sp,
                  ),
                )
              : Image.asset(
                  ImageAssets.logo2,
                  color: ColorManager.mainColor,
                ),
          InkWell(
              onTap: () {
                context.beamToReplacementNamed('/Login');
              },
              child: const Text(
                'تسجيل خروج',
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: 14,
                ),
              ))
        ],
      ).horizontalPadding(30).verticalPadding(16),
    ).horizontalPadding(secPage ? 24 : 0).verticalPadding(26);
  }
}
