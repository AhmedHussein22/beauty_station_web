import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddedBy extends StatelessWidget {
  const AddedBy({super.key});

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
              title: 'تمت الاضافه بواسطه',
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
                                title: 'اسم المندوب',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'احمد خالد',
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
                                title: 'رقم الجوال',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: '0555555555',
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
                                title: 'التاريخ',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: '12/12/2021',
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
