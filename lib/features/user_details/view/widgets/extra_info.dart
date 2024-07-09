import 'package:beauty_station_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ExtraInfo extends StatelessWidget {
  const ExtraInfo({super.key});

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //************ Extra Info Commercial Registration No */
                    CustomeDataView(
                      title: 'رقم السجل التجاري / الخدمه',
                      data: 'SA45124558562545215',
                      icon: Icons.pin,
                      isLink: false,
                      isSelectable: false,
                    ),
                    //************ Extra Info website  */
                    CustomeDataView(
                      title: 'الموقع الالكتروني',
                      data: 'http://www.salon.com',
                      icon: Icons.language,
                      isLink: true,
                      isSelectable: false,
                    ),
                    //************ Extra Info Social Media Link */
                    CustomeDataView(
                      title: 'الموقع التواصل الاجتماعي',
                      data: 'http://www.instagram.com/salon',
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
