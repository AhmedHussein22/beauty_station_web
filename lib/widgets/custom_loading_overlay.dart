// ignore_for_file: deprecated_member_use

import 'package:beauty_station_web/resource/assets_manager.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const LoadingOverlay(
      {super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Stack(
        children: [
          child,
          if (isLoading)
            Container(
              color: ColorManager.offWhite.withOpacity(0.4),
              alignment: Alignment.center,
              child: Center(
                child: SvgPicture.asset(
                  SVGAssets.logoSVG,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
