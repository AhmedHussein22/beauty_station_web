import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.5.sh,
        width: 0.15.sw,
        decoration: BoxDecoration(
          color: ColorManager.mainColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            20.verticalSpace,
            CustomText(
              title: 'Ping Information',
              textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeightManager.semiBold,
              ),
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
                color: ColorManager.offWhite,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25.h,
                  color: ColorManager.neutral600,
                ),
                title: Text(
                  'عرض المشتركين',
                  style: TextStyle(
                    color: ColorManager.neutral600,
                    fontSize: 12.sp,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
                onTap: () {},
                textColor: ColorManager.neutralWhite,
              ),
            ).onlyPadding(rPadding: 20),
          ],
        )).paddingAll(8);
  }
}
