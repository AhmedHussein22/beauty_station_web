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
      "https://www.shutterstock.com/image-vector/swoosh-letter-logo-design-business-260nw-1913663479.jpg";

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
                      cache: const Duration(hours: 1),
                      backgroundColor: Colors.grey[300],
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
                      cache: const Duration(hours: 1),
                      backgroundColor: Colors.grey[300],
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
                    child:

                        // AnyLinkPreview.builder(
                        //     link: contractIMG,
                        //     itemBuilder: (context, metadata, imageProvider, _) {
                        //       AppLogs.infoLog('metadata: $metadata');
                        //       return Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Image.network(metadata.url!),
                        //         ],
                        //       );
                        //     })
                        AnyLinkPreview(
                      link: contractIMG,
                      showMultimedia: true,
                      cache: const Duration(hours: 1),
                      backgroundColor: Colors.grey[300],
                      errorWidget: Container(
                        color: Colors.grey[300],
                        child: Image.network(contractIMG),
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
                      cache: const Duration(hours: 1),
                      backgroundColor: Colors.grey[300],
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
