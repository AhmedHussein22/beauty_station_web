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
  final List<String> portfolio = [
    "https://drive.google.com/file/d/1Zt8Kyp8hhP3c14b0JhhtdsQccs8aOzu9/view",
    "https://docs.google.com/spreadsheets/d/1377hrQTaeV0L9I0kt9ZldVlWdksApPiz/edit?gid=1036872227#gid=1036872227",
    "https://drive.google.com/file/d/1EzJH3ZODz4pGNSuKGz7o5NL03AKFeUVU/view?usp=drive_link"
  ];

  final String servicemenu =
      "https://docs.google.com/spreadsheets/d/1377hrQTaeV0L9I0kt9ZldVlWdksApPiz/edit?gid=1036872227#gid=1036872227";

  final String contractIMG =
      "https://drive.google.com/file/d/1EzJH3ZODz4pGNSuKGz7o5NL03AKFeUVU/view?usp=drive_link";

  final String logoIMG =
      "https://drive.google.com/file/d/1Zt8Kyp8hhP3c14b0JhhtdsQccs8aOzu9/view";
  List<Widget> carouselItems = [];
  Future<void> sliderImage(List<String> images) async {
    for (var element in images) {
      carouselItems.add(RenderPreviewLink(link: element));
    }
  }

  @override
  void initState() {
    super.initState();
    sliderImage(portfolio);
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
                      itemCount: portfolio.length,
                      itemBuilder: (context, index) {
                        return RenderPreviewLink(
                            link: portfolio[index],
                            errorWidget:
                                'https://www.creativefabrica.com/wp-content/uploads/2022/11/03/Click-here-button-with-hand-pointer-clic-Graphics-44644519-1.jpg');
                      },
                      scrollDirection: Axis.vertical,
                      physics: const AlwaysScrollableScrollPhysics(),
                    ),
                  )
                ],
              ),
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
                  RenderPreviewLink(link: servicemenu)
                ],
              ),
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
                    link: contractIMG,
                    errorWidget:
                        'https://www.creativefabrica.com/wp-content/uploads/2022/11/03/Click-here-button-with-hand-pointer-clic-Graphics-44644519-1.jpg',
                  ),
                ],
              ),
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
                    link: portfolio[0],
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
      child: AnyLinkPreview(
        link: link,
        showMultimedia: true,
        cache: const Duration(days: 7),
        backgroundColor: Colors.grey[300],
        bodyMaxLines: 1,
        errorImage: errorWidget,
        errorWidget: Container(
          color: Colors.grey[300],
          child: const Text('Oops!'),
        ),
      ).horizontalPadding(20).verticalPadding(20),
    );
  }
}
