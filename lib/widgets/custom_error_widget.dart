import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? errorMsg;
  final String? btnText;
  final VoidCallback? onPress;
  final bool showBtn;
  final double? radius, iconSize;

  const CustomErrorWidget({
    super.key,
    this.errorMsg,
    this.onPress,
    this.btnText,
    this.showBtn = true,
    this.radius = 40,
    this.iconSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onPress ?? () {},
          child: CircleAvatar(
            backgroundColor: ColorManager.mainColor,
            radius: radius!.r,
            child: Icon(
              Icons.replay,
              color: ColorManager.offWhite,
              size: iconSize!.r,
            ),
          ).verticalPadding(20),
        ),
        CustomText(
          title: 'error'.tr(context: context),
          size: 18,
          fontWeight: FontWeight.w600,
        ),
        3.verticalSpace,
        CustomText(
          title: errorMsg ?? '',
          size: 16,
          fontWeight: FontWeight.w400,
          color: ColorManager.mainColor,
          textAlign: TextAlign.center,
        ).horizontalPadding(15),
        // if (showBtn)
        //   CustomButton(
        //     onTap: onPress ?? () {},
        //     text: 'plsLogin'.tr(context: context),
        //     btnWidth: 0.5.sw,
        //     btnTextSize: 14,
        //     btnTextFontWeight: FontWeight.w500,
        //   ),
      ],
    ));
  }
}
