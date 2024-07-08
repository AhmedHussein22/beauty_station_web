import 'package:any_link_preview/any_link_preview.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaData extends StatefulWidget {
  const MediaData({super.key});

  @override
  State<MediaData> createState() => _MediaDataState();
}

class _MediaDataState extends State<MediaData> {
  final String portfolio =
      "https://drive.google.com/file/d/1Zt8Kyp8hhP3c14b0JhhtdsQccs8aOzu9/view";

  final String servicemenu =
      "https://docs.google.com/spreadsheets/d/1377hrQTaeV0L9I0kt9ZldVlWdksApPiz/edit?gid=1036872227#gid=1036872227";

  final String contractIMG =
      "https://drive.google.com/file/d/1EzJH3ZODz4pGNSuKGz7o5NL03AKFeUVU/view?usp=drive_link";

  final String logoIMG =
      "https://drive.google.com/file/d/1Zt8Kyp8hhP3c14b0JhhtdsQccs8aOzu9/view";
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
              title: 'الملفات المرفوعه',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                children: [
                  CustomText(
                    title: 'البروفيل',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: AnyLinkPreview(
                      link: portfolio,
                      showMultimedia: true,
                      cache: const Duration(days: 7),
                      backgroundColor: Colors.grey[300],
                      bodyMaxLines: 1,
                      errorWidget: Container(
                        color: Colors.grey[300],
                        child: const Text('Oops!'),
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomText(
                    title: 'قائمه الخدمات',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: AnyLinkPreview(
                      link: servicemenu,
                      cache: const Duration(days: 7),
                      backgroundColor: Colors.grey[300],
                      bodyMaxLines: 1,
                      errorWidget: Container(
                        color: Colors.grey[300],
                        child: const Text('Oops!'),
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomText(
                    title: 'صوره السجل التجاري / الترخيص',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: AnyLinkPreview(
                      link: contractIMG,
                      bodyMaxLines: 1,
                      cache: const Duration(days: 7),
                      backgroundColor: Colors.grey[300],
                      errorImage:
                          'https://www.creativefabrica.com/wp-content/uploads/2022/11/03/Click-here-button-with-hand-pointer-clic-Graphics-44644519-1.jpg',
                      errorWidget: Container(
                        color: Colors.grey[300],
                        child: const Text('Oops!'),
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomText(
                    title: 'اللوجو',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: AnyLinkPreview(
                      link: portfolio,
                      showMultimedia: true,
                      cache: const Duration(days: 7),
                      backgroundColor: Colors.grey[300],
                      bodyMaxLines: 1,
                      errorWidget: Container(
                        color: Colors.grey[300],
                        child: const Text('Oops!'),
                      ),
                    ).horizontalPadding(20).verticalPadding(20),
                  ),
                ],
              )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}
