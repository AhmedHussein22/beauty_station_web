// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/utils/app_utils/extentions.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class CustomTime extends StatefulWidget {
//   final int startTimer;
//   final String title;
//   final void Function()? resend;
//   final bool isFromResnd;

//   const CustomTime({super.key, required this.startTimer, required this.title, this.resend, this.isFromResnd = false});

//   @override
//   State<CustomTime> createState() => _CustomTimeState();
// }

// class _CustomTimeState extends State<CustomTime> {
//   Timer? _timer;
//   int _startTimer = 0;

//   void startTimer() {
//     _timer = Timer.periodic(
//       const Duration(seconds: 1),
//       (Timer timer) {
//         if (_startTimer == 0) {
//           setState(() {
//             timer.cancel();
//           });
//         } else {
//           setState(() {
//             _startTimer--;
//           });
//         }
//       },
//     );
//   }

//   @override
//   void initState() {
//     _startTimer = widget.startTimer;
//     startTimer();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   String get timerString {
//     Duration duration = Duration(seconds: _startTimer);
//     return '${duration.inHours.toString().padLeft(2, '0')}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bool isTimeOver = _startTimer <= 0;
//     final bool showResend = isTimeOver || widget.isFromResnd;
//     return showResend
//         ? InkWell(
//             onTap: () {
//               widget.resend?.call();
//               setState(() {
//                 _startTimer = widget.startTimer;
//                 startTimer();
//               });
//             },
//             child: CustomText(
//               title: 'resend'.tr(context: context),
//               underLine: true,
//               textStyle: FontStyleManager.subtitle2BlackM.copyWith(
//                 color: ColorManager.primary,
//                 decoration: TextDecoration.underline,
//               ),
//             ),
//           )
//         : CustomText(
//             title: '${widget.title} $timerString',
//             textStyle: FontStyleManager.subtitle2BlackM,
//           );
//   }
// }
