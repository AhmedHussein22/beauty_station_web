// ignore_for_file: file_names

import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resource/font_style_manager.dart';

class CustomPopupMenuButton extends StatelessWidget {
  final List<String> options;
  final Function(String) onSelected;
  final double? width;
  final Widget? icon;

  const CustomPopupMenuButton({
    super.key,
    required this.options,
    required this.onSelected,
    this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        List<PopupMenuEntry<String>> entries = [];
        for (var i = 0; i < options.length; i++) {
          entries.add(
            PopupMenuItem<String>(
              value: options[i],
              child: CustomText(
                title: options[i],
                textStyle: FontStyleManager.subtitle2BlackM,
              ),
            ),
          );
          if (i != options.length - 1) {
            entries.add(const PopupMenuDivider(height: 1));
          }
        }
        return entries;
      },
      onSelected: onSelected,
      constraints: BoxConstraints(
        minWidth: width ?? 100.w,
      ),
      position: PopupMenuPosition.under,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: const BorderSide(color: ColorManager.offWhite),
      ),
      color: ColorManager.offWhite,
      icon: icon ?? const Icon(Icons.more_vert), // This is optional
    );
  }
}
