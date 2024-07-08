import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

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
              title: 'بيانات المستخدم',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            Row(children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 80.r,
                    backgroundColor: ColorManager.neutral400,
                    child: Icon(
                      Icons.store,
                      size: 0.03.sw,
                      color: ColorManager.neutralWhite,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  CustomText(
                    title: 'Beauty Station',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ),
                  CustomText(
                    title: '0554152145',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                  CustomText(
                    title: 'SalonY@gmail.com',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
              Container(
                width: 0.002.sw,
                height: 0.3.sh,
                color: ColorManager.neutral200,
              ).verticalPadding(50),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 0.1.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'رقم الهويه',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: '12548596',
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
                          child: CustomText(
                            title: 'مدينه : الرياض',
                            textStyle: TextStyle(
                              color: ColorManager.neutral400,
                              fontSize: 16.sp,
                              fontWeight: FontWeightManager.regular,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 0.1.sw,
                          child: CustomText(
                            title: 'الجنسيه : سعودي',
                            textStyle: TextStyle(
                              color: ColorManager.neutral400,
                              fontSize: 16.sp,
                              fontWeight: FontWeightManager.regular,
                            ),
                          ),
                        ),
                      ],
                    ).horizontalPadding(20),
                    const Divider().verticalPadding(25),
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
                                title: 'مواعيد العمل الرسميه',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title:
                                    ' Sunday to Monday From 08:00 AM to 05:00 PM',
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
                                title: 'مواعيد العمل ايام الاجازات الرسميه',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title:
                                    ' Sunday to Monday From 08:00 AM to 05:00 PM',
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
                                title: 'مواعيد العمل ايام المناسبات',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title:
                                    ' Sunday to Monday From 08:00 AM to 05:00 PM',
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
                    const Divider().verticalPadding(25),
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
                                title: 'اسم البنك',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'بنك الراجحي',
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
                                title: 'رقم الحساب / الايبان IBAN',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'SA123456789123456789123456789123456789',
                                textStyle: TextStyle(
                                  color: ColorManager.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 0.2.sw,
                        )
                      ],
                    ).horizontalPadding(20),
                    const Divider().verticalPadding(25),
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
                                title: 'رقم جوال خدمه العملاء',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: '19525',
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
                                title: 'البريد الالكتروني لخدمه العملاء',
                                textStyle: TextStyle(
                                  color: ColorManager.neutral400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              10.verticalSpace,
                              CustomText(
                                title: 'salonHotCall@gmail.com',
                                textStyle: TextStyle(
                                  color: ColorManager.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 0.2.sw,
                        )
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
