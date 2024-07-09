import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomeDataView extends StatelessWidget {
  final String title, data;
  final IconData icon;
  final bool isLink;
  final bool isSelectable;
  const CustomeDataView(
      {super.key,
      required this.title,
      required this.data,
      required this.icon,
      required this.isLink,
      required this.isSelectable});

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.2.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.verticalSpace,
          Row(
            children: [
              Icon(
                icon,
                color: ColorManager.neutral400,
                size: 20.sp,
              ),
              5.horizontalSpace,
              CustomText(
                title: title,
                textStyle: TextStyle(
                  color: ColorManager.neutral400,
                  fontSize: 18.sp,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
            ],
          ),
          10.verticalSpace,
          //************ Extra Info Commercial Registration No Value*/
          isSelectable
              ? SelectableText(
                  data,
                  style: TextStyle(
                    color: ColorManager.mainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeightManager.bold,
                    decoration:
                        isLink ? TextDecoration.underline : TextDecoration.none,
                  ),
                )
              : InkWell(
                  onTap: isLink ? () {
                    if (isLink) {
                      _launchUrl(data);
                    }
                  } : null,
                child: CustomText(
                    title: data,
                    textStyle: TextStyle(
                      color: ColorManager.mainColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeightManager.bold,
                      decoration:
                          isLink ? TextDecoration.underline : TextDecoration.none,
                    ),
                  ),
              ),
        ],
      ),
    );
  }
}
