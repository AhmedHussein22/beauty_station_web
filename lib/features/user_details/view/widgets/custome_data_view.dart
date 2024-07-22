import 'dart:html' as html;

import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeDataView extends StatelessWidget {
  final String title, data, extraLink;
  final IconData icon;
  final bool isLink;
  final Widget workingHours;
  final bool isSelectable, isExtraLink, isWorkingHours;
  final double width;
  const CustomeDataView(
      {super.key,
      required this.title,
      required this.data,
      required this.icon,
      required this.isLink,
      required this.isSelectable,
      this.extraLink = '',
      this.width = 0.2,
      this.isExtraLink = false,
      this.workingHours = const SizedBox(),
      this.isWorkingHours = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.sw,
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
                  color: ColorManager.thiredColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
            ],
          ),
          10.verticalSpace,
          //************ Extra Info Commercial Registration No Value*/
          isWorkingHours
              ? workingHours
              : isSelectable
                  ? SelectableText(
                      data,
                      style: TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeightManager.bold,
                        decoration: isLink
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    )
                  : InkWell(
                      onTap: isLink
                          ? () {
                              if (isLink) {
                                isExtraLink
                                    ? html.window.open(extraLink, 'new tab')
                                    : html.window.open(data, 'new tab');
                              }
                            }
                          : null,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: CustomText(
                          title: data,
                          textStyle: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeightManager.bold,
                            decoration: isLink
                                ? TextDecoration.underline
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}
