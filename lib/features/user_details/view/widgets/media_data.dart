import 'dart:html' as html;

import 'package:any_link_preview/any_link_preview.dart';
import 'package:beauty_station_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_station_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/services/api/end_points.dart';
import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaData extends StatelessWidget {
  final SalonUserData salonUserData;
  final BeauticianUserData beauticianUserData;
  final bool isSalon;

  const MediaData({
    super.key,
    required this.salonUserData,
    required this.beauticianUserData,
    required this.isSalon,
  });

  bool checkValidationforLength(int type) {
    return type == 1
        ? isSalon
            ? salonUserData.salonImages == null ||
                    salonUserData.salonImages!.isEmpty
                ? false
                : true
            : beauticianUserData.previousWorkImages == null ||
                    beauticianUserData.previousWorkImages!.isEmpty
                ? false
                : true
        : type == 2
            ? isSalon
                ? salonUserData.servicesAndPrices == null ||
                        salonUserData.servicesAndPrices!.isEmpty
                    ? false
                    : true
                : beauticianUserData.servicesAndPrices == null ||
                        beauticianUserData.servicesAndPrices!.isEmpty
                    ? false
                    : true
            : type == 3
                ? isSalon
                    ? salonUserData.commercialRecordImage == null ||
                            salonUserData.commercialRecordImage!.isEmpty
                        ? false
                        : true
                    : beauticianUserData.licenseImage == null ||
                            beauticianUserData.licenseImage!.isEmpty
                        ? false
                        : true
                : isSalon
                    ? salonUserData.logo == null || salonUserData.logo!.isEmpty
                        ? false
                        : true
                    : beauticianUserData.logo == null ||
                            beauticianUserData.logo!.isEmpty
                        ? false
                        : true;
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
            //************ Media Data title */
            CustomText(
              title: 'الملفات المرفوعه',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              if (checkValidationforLength(1))
                Column(
                  children: [
                    //************ Portfolio */
                    CustomText(
                      title: 'صور الصالون / الاعمال السابقه (اختياري)',
                      color: ColorManager.neutral900,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                    //************ Portfolio Link */
                    SizedBox(
                      height: 300.h,
                      width: 300.w,
                      child: ListView.builder(
                        itemCount: isSalon
                            ? salonUserData.salonImages!.length
                            : beauticianUserData.previousWorkImages!.length,
                        itemBuilder: (context, index) {
                          return RenderPreviewLink(
                              link: isSalon
                                  ? '${EndPoints.media}${salonUserData.salonImages![index]}'
                                  : '${EndPoints.media}${beauticianUserData.previousWorkImages![index]}',
                              errorWidget:
                                  'https://www.creativefabrica.com/wp-content/uploads/2022/11/03/Click-here-button-with-hand-pointer-clic-Graphics-44644519-1.jpg');
                        },
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                      ),
                    )
                  ],
                ),
              if (checkValidationforLength(2))
                Column(
                  children: [
                    //************ Service Menu */
                    CustomText(
                      title: 'قائمه الخدمات',
                      color: ColorManager.neutral900,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                    //************ Service Menu Link */
                    RenderPreviewLink(
                      link: isSalon
                          ? EndPoints.media + salonUserData.servicesAndPrices!
                          : EndPoints.media +
                              beauticianUserData.servicesAndPrices!,
                    )
                  ],
                ),
              if (checkValidationforLength(3))
                Column(
                  children: [
                    //************ Contract Image */
                    CustomText(
                      title: 'صوره السجل التجاري / الترخيص',
                      color: ColorManager.neutral900,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                    //************ Contract Image Link */
                    RenderPreviewLink(
                      link: isSalon
                          ? EndPoints.media +
                              salonUserData.commercialRecordImage!
                          : EndPoints.media + beauticianUserData.licenseImage!,
                      errorWidget:
                          'https://www.creativefabrica.com/wp-content/uploads/2022/11/03/Click-here-button-with-hand-pointer-clic-Graphics-44644519-1.jpg',
                    ),
                  ],
                ),
              if (checkValidationforLength(4))
                Column(
                  children: [
                    //************ Logo Image */
                    CustomText(
                      title: 'اللوجو (اختياري)',
                      color: ColorManager.neutral900,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                    //************ Logo Image Link */
                    RenderPreviewLink(
                      link: isSalon
                          ? EndPoints.media + salonUserData.logo!
                          : EndPoints.media + beauticianUserData.logo!,
                    ),
                  ],
                )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}

// ignore: must_be_immutable
class RenderPreviewLink extends StatelessWidget {
  final String link;
  String? errorWidget;
  RenderPreviewLink({super.key, required this.link, this.errorWidget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 300.h,
      child:
          link.contains('jpg') || link.contains('png') || link.contains('jpeg')
              ? Image.network(
                  link,
                  fit: BoxFit.contain,
                ).horizontalPadding(20).verticalPadding(20)
              : AnyLinkPreview(
                  link: link,
                  // showMultimedia: true,
                  cache: const Duration(days: 7),
                  backgroundColor: Colors.grey[300],
                  bodyMaxLines: 1,
                  errorImage: errorWidget,
                  errorWidget: InkWell(
                    onTap: () {
                      html.window.open(link, 'new tab');
                      AppLogs.infoLog('message: Link: $link');
                    },
                    child: Image.network(link.contains('pdf') ||
                            link.contains('docx') ||
                            link.contains('doc')
                        ? 'https://play-lh.googleusercontent.com/dl4ZuJhfD5xR9m2H-oZ9UcLZwYmGpmWMurPrvTiN831ZWLia9NbrYurXV-32wtOzPmM5'
                        : 'https://www.ro.senac.br/wp-content/uploads/2020/10/excel-avancado-1.jpg'),
                  ),
                ).horizontalPadding(20).verticalPadding(20),
    );
  }
}
