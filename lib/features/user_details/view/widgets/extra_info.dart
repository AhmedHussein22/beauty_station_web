import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtraInfo extends StatelessWidget {
  const ExtraInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: ColorManager.neutralWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'معلومات اضافيه',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            Row(children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 0.2.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'رقم السجل التجاري / الخدمه',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'SA45124558562545215',
                                textStyle: TextStyle(
                                  color: ColorManager.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 0.1.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'الموقع الالكتروني',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'salon@gmail.com',
                                textStyle: TextStyle(
                                  color: ColorManager.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 0.2.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'الموقع التواصل الاجتماعي',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'http://www.instagram.com/salon',
                                textStyle: TextStyle(
                                  color: ColorManager.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).horizontalPadding(20),
                    50.verticalSpace
                  ],
                ),
              )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}
