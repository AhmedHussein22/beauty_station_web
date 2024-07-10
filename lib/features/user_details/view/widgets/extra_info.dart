import 'package:beauty_station_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_station_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_station_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtraInfo extends StatelessWidget {
  final SalonUserData salonUserData;
  final bool isSalon;
  final BeauticianUserData beauticianUserData;
  const ExtraInfo({
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
                          ? salonUserData.commercialRecordNumber!
                          : beauticianUserData.licenseNumber!,
                      icon: Icons.pin,
                      isLink: false,
                      isSelectable: false,
                    ),
                    //************ Extra Info website  */
                    CustomeDataView(
                      title: 'الموقع الالكتروني',
                      data: isSalon
                          ? salonUserData.website!
                          : beauticianUserData.website!,
                      icon: Icons.language,
                      isLink: true,
                      isSelectable: false,
                    ),
                    //************ Extra Info Social Media Link */
                    CustomeDataView(
                      title: 'الموقع التواصل الاجتماعي',
                      data: isSalon
                          ? salonUserData.socialMediaAccounts!
                          : beauticianUserData.socialMediaAccounts!,
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
