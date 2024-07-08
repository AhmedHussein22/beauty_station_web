// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/utils/app_utils/extentions.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class CustomDropdown extends StatelessWidget {
//   final String hintText;
//   final String titleText;
//   final String initialValue;
//   final ValueChanged<dynamic>? onChanged;
//   final Object? selectedValue;
//   final List<DropdownMenuItem<Object>>? items;
//   final double? width;
//   final bool isActive;
//   final bool isRequierd;
//   final bool isShadow;
//   final bool showClearIcon;
//   final dynamic onClearFun;
//   final String? Function(Object?)? validatorFun;
//   final EdgeInsetsGeometry? contentPadding;

//   final Color? hintColor;
//   final double? hintsize;
//   final Color? enabledBorderColor;
//   final Color? focusedBorderColor;
//   final Color? fillColor;
//   final String? errorText;
//   final String? title;
//   final Color? titleColor;
//   final IconData? prefixIcon;
//   final double? borderRadius;
//   final Widget? prefixWidget;
//   final Widget? suffixIcon;
//   final TextAlign? textAlign;

//   final Widget? suffixWidget;

//   const CustomDropdown({
//     super.key,
//     this.hintText = "",
//     this.titleText = "",
//     this.onChanged,
//     this.selectedValue,
//     required this.items,
//     this.initialValue = "",
//     this.width,
//     this.onClearFun,
//     this.isActive = true,
//     this.isRequierd = true,
//     this.showClearIcon = false,
//     this.isShadow = true,
//     this.contentPadding,
//     this.validatorFun,
//     this.hintColor,
//     this.hintsize,
//     this.enabledBorderColor,
//     this.focusedBorderColor,
//     this.fillColor,
//     this.errorText,
//     this.title,
//     this.titleColor,
//     this.borderRadius,
//     this.textAlign,
//     this.suffixWidget,
//     this.prefixIcon,
//     this.prefixWidget,
//     this.suffixIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         //******* title  ******* */
//         if (title != null)
//           Padding(
//             padding: EdgeInsets.only(bottom: 12.h),
//             child: Align(
//               alignment: AlignmentDirectional.centerStart,
//               child: CustomText(
//                 title: title!,
//                 textStyle: FontStyleManager.subtitle1BlackM,
//               ),
//             ),
//           ),
//         //******* text field  ******* */
//         DropdownButtonFormField(
//           dropdownColor: const Color(0xFF8EDFDE).withOpacity(0.15),
//           borderRadius: 8.smoothBorderRadius,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           isExpanded: true,
//           iconEnabledColor: ColorManager.primary600,
//           elevation: 0,
//           iconDisabledColor: ColorManager.neutral100,
//           alignment: AlignmentDirectional.centerStart,
//           icon: const SizedBox.shrink(),
//           disabledHint: Text(
//             'loading'.tr(context: context),
//             style: TextStyle(color: Colors.grey, fontSize: 12.sp),
//             overflow: TextOverflow.ellipsis,
//           ),
//           padding: 20.vPadding,
//           value: selectedValue,
//           onChanged: onChanged,
//           items: items,
//           validator: validatorFun ??
//               (value) {
//                 if (isRequierd) {
//                   return value == "" || value == null ? "${title ?? hintText} ${'requered'.tr(context: context)}" : null;
//                 }
//                 return null;
//               },
//           style: FontStyleManager.subtitle2BlackM,
//           hint: Text(
//             hintText,
//             style: FontStyleManager.subtitle2BlackM,
//           ),
//           decoration: InputDecoration(
//             counterText: ' ',
//             errorText: errorText,
//             errorStyle: FontStyleManager.subtitle2RedM,
//             prefixIcon: prefixWidget ??
//                 (prefixIcon != null
//                     ? Padding(
//                         padding: EdgeInsetsDirectional.only(start: 12.w, end: 8.w),
//                         child: Icon(
//                           prefixIcon,
//                           size: 26.r,
//                         ),
//                       )
//                     : null),
//             suffix: suffixWidget,
//             suffixIconConstraints: const BoxConstraints(
//               minWidth: 0,
//               minHeight: 0,
//             ),
//             suffixIcon: suffixIcon ??
//                 Padding(
//                   padding: EdgeInsetsDirectional.only(start: 8.w, end: 12.w),
//                   child: Icon(
//                     CupertinoIcons.arrow_down,
//                     color: ColorManager.neutral950,
//                     size: 26.r,
//                   ),
//                 ),
//             filled: true,
//             alignLabelWithHint: true,
//             errorMaxLines: 1,
//             suffixStyle: FontStyleManager.subtitle2Gary,
//             isDense: true,
//             hintStyle: FontStyleManager.body2GrayM,
//             contentPadding: contentPadding ?? EdgeInsets.only(left: 12.w, right: 12.w, top: 8.h, bottom: 10.h),
//             hintText: hintText,
//             fillColor: fillColor ?? Colors.transparent,
//             border: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.neutral300),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.neutral300),
//             ),
//             disabledBorder: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.neutral300),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.otherRed2, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.primary500, width: 1),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               borderRadius: 8.smoothBorderRadius,
//               borderSide: const BorderSide(color: ColorManager.otherRed2, width: 1),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
