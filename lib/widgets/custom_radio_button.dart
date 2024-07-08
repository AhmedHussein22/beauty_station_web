// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class CustomRadioButton extends StatelessWidget {
//   final bool value;
//   final void Function() onChanged;
//   final String title;
//   const CustomRadioButton(
//       {super.key,
//       required this.value,
//       required this.title,
//       required this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         GestureDetector(
//           onTap: onChanged,
//           child: CircleAvatar(
//             radius: 10,
//             backgroundColor: value
//                 ? ColorManager.primary500
//                 : ColorManager.neutral400.withOpacity(0.5),
//             child: CircleAvatar(
//               radius: 9,
//               backgroundColor: ColorManager.neutralWhite,
//               child: CircleAvatar(
//                 radius: 7,
//                 backgroundColor: value
//                     ? ColorManager.primary900
//                     : ColorManager.rakeezBrown100,
//               ),
//             ),
//           ),
//         ),
//         8.horizontalSpace,
//         CustomText(
//           title: title,
//           textStyle: FontStyleManager.subtitle2Black,
//         ),
//       ],
//     );
//   }
// }
