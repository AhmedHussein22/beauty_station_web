// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/utils/app_utils/extentions.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class CustomCheckbox extends StatelessWidget {
//   final bool value;
//   final ValueChanged<bool?> onChanged;
//   final String title;
//   final double? width, height;
//   final Color? color;

//   const CustomCheckbox({
//     super.key,
//     required this.value,
//     required this.onChanged,
//     required this.title,
//     this.width,
//     this.height,
//     this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color ?? Colors.transparent,
//       child: ListTile(
//         contentPadding: EdgeInsets.zero,
//         selectedColor: Colors.transparent,
//         selectedTileColor: Colors.transparent,
//         minVerticalPadding: 0,
//         hoverColor: Colors.transparent,
//         focusColor: Colors.transparent,
//         titleAlignment: ListTileTitleAlignment.center,
//         selected: true,
//         leading: SizedBox(
//           height: height ?? 20.r,
//           width: width ?? 20.r,
//           child: GestureDetector(
//             onTap: () {
//               onChanged(!value);
//             },
//             child: value
//                 ? Container(
//                     decoration: BoxDecoration(
//                       color: ColorManager.primary700,
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Icon(
//                       Icons.check,
//                       color: ColorManager.neutralWhite,
//                       size: 16.r,
//                     ),
//                   )
//                 : Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                           color: ColorManager.primary900, width: 2.w),
//                     ),
//                   ),
//           ),
//         ),
//         title: CustomText(
//           title: title,
//           textStyle: FontStyleManager.body2GrayM.copyWith(
//             color: ColorManager.neutral700,
//           ),
//         ),
//       ).horizontalPadding(10),
//     );
//   }
// }
