// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:rakeez/resource/color_manager.dart';

// class CustomRichText extends StatelessWidget {
//   final String firstText;
//   final String secondText;
//   final VoidCallback onTap;
//   final bool iAlignCenter;

//   const CustomRichText({
//     super.key,
//     required this.firstText,
//     required this.secondText,
//     required this.onTap,
//     required this.iAlignCenter,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       textAlign: iAlignCenter ? TextAlign.center : TextAlign.start,
//       text: TextSpan(children: [
//         TextSpan(
//           text: firstText,
//           style: GoogleFonts.ibmPlexSansArabic(
//             color: const Color(0XFF959595),
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w300,
//             letterSpacing: 0.06.w,
//           ),
//         ),
//         TextSpan(
//           text: secondText,
//           style: GoogleFonts.ibmPlexSansArabic(
//             color: ColorManager.primary600,
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w500,
//             letterSpacing: 0.06.w,
//           ),
//           recognizer: TapGestureRecognizer()..onTap = onTap,
//         ),
//       ]),
//     );
//   }
// }
