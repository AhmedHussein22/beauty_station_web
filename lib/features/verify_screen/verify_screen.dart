import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        //height: 850,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ScreenUtil().screenWidth > 300 && ScreenUtil().screenWidth < 900 ? ImageAssets.welcomeBgM : ImageAssets.welcomeBg,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
