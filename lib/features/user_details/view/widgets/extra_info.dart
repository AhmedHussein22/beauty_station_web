import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_solution_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_solution_web/features/user_details/data/beauticalModel.dart';
import 'package:beauty_solution_web/features/user_details/data/salonModel.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtraInfo extends StatelessWidget {
  final bool isSalon;
  final SalonsModel salonUserData;
  final BeauticiansModel beauticianUserData;  const ExtraInfo({
    super.key,
    required this.salonUserData,
    required this.beauticianUserData,
    required this.isSalon,
  });

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
            //************ Extra Info title */
            CustomText(
              title: 'معلومات اضافيه (اختياري)',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            //************ Extra Info Data */
            Row(children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //************ Extra Info Commercial Registration No */
                    CustomeDataView(
                      title: 'رقم السجل التجاري / الخدمه',
                      data: isSalon
                          ? salonUserData.commercialRecordNumber ?? 'غير متوفر'
                          : beauticianUserData.licenseNumber ?? 'غير متوفر',
                      icon: Icons.pin,
                      isLink: false,
                      isSelectable: false,
                    ),
                    //************ Extra Info website  */
                    CustomeDataView(
                      title: 'الموقع الالكتروني',
                      data: isSalon
                          ? salonUserData.website ?? 'غير متوفر'
                          : beauticianUserData.website ?? 'غير متوفر',
                      icon: Icons.language,
                      isLink: true,
                      isSelectable: false,
                    ),
                    //************ Extra Info Social Media Link */
                    CustomeDataView(
                      title: 'الموقع التواصل الاجتماعي',
                      data: isSalon
                          ? salonUserData.socialMediaAccounts ?? 'غير متوفر'
                          : beauticianUserData.socialMediaAccounts ??
                              'غير متوفر',
                      icon: Icons.phone_android_rounded,
                      isLink: true,
                      isSelectable: false,
                    ),
                  ],
                ).horizontalPadding(20).onlyPadding(bPadding: 50),
              )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}
