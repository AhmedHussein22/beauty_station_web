import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TiTleForTable extends StatelessWidget {
  const TiTleForTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        40.horizontalSpace,
        SizedBox(
          width: 100.w,
          child: const CustomText(
            title: 'الاسم',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 150.w,
          child: const CustomText(
            title: 'رقم الترخيص',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 180.w,
          child: const CustomText(
            title: 'البريد الاليكتروني',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 120.w,
          child: const CustomText(
            title: 'رقم الجوال',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 80.w,
          child: const CustomText(
            title: 'المدينة',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 200.w,
          child: const CustomText(
            title: 'الجنسيه',
            textStyle: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
