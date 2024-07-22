import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resource/assets_manager.dart';

class CustomNoDataWidget extends StatelessWidget {
  final String? msg;
  final double? height;
  final double? width;
  const CustomNoDataWidget({super.key, this.msg, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            ImageAssets.defualtAvtar,
            height: height ?? 100.w,
            width: width ?? 100.w,
          ),
        ),
        10.verticalSpace,
        CustomText(
          title: msg ?? 'noData'.tr(context: context),
          size: 20,
          color: ColorManager.mainColor,
          textAlign: TextAlign.center,
        ).horizontalPadding(24),
      ],
    );
  }
}
