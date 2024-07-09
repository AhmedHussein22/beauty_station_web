import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountWidget extends StatelessWidget {
  final String totalUsers, usersType, persintageUsers;
  const CountWidget(
      {super.key,
      required this.totalUsers,
      required this.usersType,
      required this.persintageUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ******* total users *******
              CustomText(
                title: totalUsers,
                textStyle: TextStyle(
                    color: ColorManager.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeightManager.semiBold),
              ),
              // ******* users type *******
              CustomText(
                title: usersType,
                textStyle: TextStyle(
                    color: ColorManager.neutral600,
                    fontSize: 14.sp,
                    fontWeight: FontWeightManager.medium),
              ),
              // ******* persintage users *******
              CustomText(
                title: persintageUsers,
                textStyle: TextStyle(
                    color: ColorManager.neutral600,
                    fontSize: 14.sp,
                    fontWeight: FontWeightManager.medium),
              ),
            ],
          ),
          20.horizontalSpace,
          // ******* circle avatar *******
          const CircleAvatar(
              backgroundColor: ColorManager.offWhite,
              radius: 30,
              child: Icon(
                Icons.people,
                color: ColorManager.neutral600,
                size: 40,
              ))
        ],
      ).allPadding(20),
    );
  }
}
