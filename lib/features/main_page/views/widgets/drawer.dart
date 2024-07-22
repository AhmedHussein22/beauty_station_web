import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.5.sh,
        width: 0.15.sw,
        decoration: BoxDecoration(
          color: ColorManager.w,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                20.verticalSpace,
                // CustomText(
                //   title: 'Beauty Solution',
                //   textStyle: TextStyle(
                //     color: ColorManager.secondaryColor,
                //     fontSize: 14.sp,
                //     fontWeight: FontWeightManager.semiBold,
                //   ),
                // ),
                // 20.horizontalSpace,
                Image.asset(
                  ImageAssets.logo1,
                  height: 180.h,
                  width: 180.w,
                  color: ColorManager.secondaryColor,
                  fit: BoxFit.contain,
                ),
                20.verticalSpace,
                Row(
                  children: [
                    CustomText(
                      title: 'الرئيسية',
                      textStyle: TextStyle(
                        color: ColorManager.neutralWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeightManager.semiBold,
                      ),
                    ),
                  ],
                ).onlyPadding(rPadding: 26),
                20.verticalSpace,
                Container(
                  decoration: const BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 25.h,
                      color: ColorManager.mainColor,
                    ),
                    title: Text(
                      'عرض المشتركين',
                      style: TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeightManager.semiBold,
                      ),
                    ),
                    onTap: () {},
                    textColor: ColorManager.neutralWhite,
                  ),
                ).onlyPadding(rPadding: 20),
              ],
            ),
            CustomText(
              title: 'Ping Information',
              textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeightManager.semiBold,
              ),
            ).verticalPadding(10),
          ],
        )).horizontalPadding(8).verticalPadding(16);
  }
}
