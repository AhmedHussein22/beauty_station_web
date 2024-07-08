// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomSwitchButton extends StatefulWidget {
//   final bool value;
//   final ValueChanged<bool> onChanged;

//   const CustomSwitchButton(
//       {super.key, required this.value, required this.onChanged});

//   @override
//   _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
// }

// class _CustomSwitchButtonState extends State<CustomSwitchButton>
//     with SingleTickerProviderStateMixin {
//   AnimationController? _animationController;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 30));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animationController!,
//       builder: (context, child) {
//         return GestureDetector(
//           onTap: () {
//             if (_animationController!.isCompleted) {
//               _animationController!.reverse();
//             } else {
//               _animationController!.forward();
//             }
//             widget.value == false
//                 ? widget.onChanged(true)
//                 : widget.onChanged(false);
//           },
//           child: Container(
//             width: 1.sw < 600 ? 38.0.w : 28.w,
//             height: 19.0.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(100.0),
//               gradient: !widget.value ? null : ColorManager.gradientPurple800,
//               color: ColorManager.neutral300,
//               //border: Border.all(color: Colors.orange, width: 2),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
//               child: Container(
//                 alignment:
//                     widget.value ? Alignment.centerRight : Alignment.centerLeft,
//                 child: Container(
//                   width: 15.r,
//                   height: 15.r,
//                   decoration: const BoxDecoration(
//                       shape: BoxShape.circle, color: ColorManager.neutralWhite),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
