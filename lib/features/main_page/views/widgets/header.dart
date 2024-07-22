import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
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
        color: ColorManager.mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          secPage
              ? InkWell(
                  onTap: () {
                    context.beamToNamed('/Home');
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorManager.neutralWhite,
                    size: 25.sp,
                  ),
                )
              : const SizedBox(),
          InkWell(
              onTap: () {
                context.beamToReplacementNamed('/Login');
              },
              child: const Text(
                'تسجيل خروج',
                style: TextStyle(
                  color: ColorManager.neutralWhite,
                  fontSize: 14,
                ),
              ))
        ],
      ).horizontalPadding(30).verticalPadding(16),
    ).verticalPadding(16);
  }
}
