import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verifywidget extends StatelessWidget {
  const Verifywidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .18.sh,
      width: .18.sw,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: ColorManager.otherGreen0),
      child: Center(
        child: Icon(
          Icons.check,
          color: ColorManager.offWhite,
          size: 70.r,
        ),
      ),
    );
  }
}
