import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyBeforeScreen extends StatelessWidget {
  const VerifyBeforeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ScreenUtil().screenWidth > 300 && ScreenUtil().screenWidth < 900 ? ImageAssets.welcomeBg1M : ImageAssets.welcomeBg1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
