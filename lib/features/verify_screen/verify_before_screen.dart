import 'package:beauty_solution_web/features/verify_screen/widgets/verifiy_widget.dart';
import 'package:beauty_solution_web/resource/font_style_manager.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VerifyBeforeScreen extends StatefulWidget {
  const VerifyBeforeScreen({super.key});

  @override
  State<VerifyBeforeScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyBeforeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Verifywidget(),
            40.h.verticalSpace,
            CustomText(
              title: ' تمت الموافقة على الشروط و الاحكام بنجاح ',
              textStyle: FontStyleManager.h35BlackB,
              textAlign: TextAlign.center,
            ),
            20.h.verticalSpace,
            CustomText(
              title: 'انتظر إرسال صورة من العقد',
              textStyle: FontStyleManager.h5BlackB,
              textAlign: TextAlign.center,
            ),
          ],
        ).paddingSymmetric(horizontal: 24.w),
      ),
    );
  }
}
