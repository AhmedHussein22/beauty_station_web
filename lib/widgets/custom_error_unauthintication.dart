import 'package:beauty_station_web/resource/assets_manager.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_button.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErroryUnAuthanticatinsWidget extends StatelessWidget {
  final String? errorMsg;
  final String? btnText;
  final VoidCallback? onPress;
  final bool showBtn;

  const CustomErroryUnAuthanticatinsWidget({
    super.key,
    this.errorMsg,
    this.onPress,
    this.btnText,
    this.showBtn = true,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              ImageAssets.defualtAvtar,
              height: 100.w,
              width: 100.w,
            ),
          ),
          10.verticalSpace,
          CustomText(
            title: 'geustUser'.tr(context: context),
            size: 20,
            color: ColorManager.mainColor,
            textAlign: TextAlign.center,
          ).horizontalPadding(24),
          CustomButton(
            onTap: () {},
            text: 'login'.tr(context: context),
            btnWidth: 0.5.sw,
            btnTextSize: 14,
            btnTextFontWeight: FontWeight.w500,
          ),
        ],
      )),
    );
  }
}
