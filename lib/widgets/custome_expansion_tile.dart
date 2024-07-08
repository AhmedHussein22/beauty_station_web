// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';


// class CustomeExpansionTitle extends StatefulWidget {
//   final String title;
//   final Object? selectedValue;
//   final List<dynamic>? items;
//   final String? errorText;
//   final Color? dropDownColor,
//       dropDownBorderColor,
//       dropDownTextColor,
//       dropDownSelectedTextColor,
//       dropdownSeparatorColor;
//   final double? width, height;
//   final bool? isLoading;
//   final TextStyle? textStyle;
//   final Function(dynamic value)? onChanged;
//   const CustomeExpansionTitle({
//     super.key,
//     this.title = '',
//     this.width,
//     this.height,
//     this.selectedValue,
//     this.items,
//     this.onChanged,
//     this.isLoading = false,
//     this.errorText = '',
//     this.dropDownColor,
//     this.dropDownBorderColor,
//     this.dropDownTextColor,
//     this.dropDownSelectedTextColor,
//     this.dropdownSeparatorColor,
//     this.textStyle,
//   });

//   @override
//   State<CustomeExpansionTitle> createState() => _CustomExpansionTitleState();
// }

// class _CustomExpansionTitleState extends State<CustomeExpansionTitle> {
//   bool isOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedCrossFade(
//       duration: const Duration(milliseconds: 400),
//       firstChild: _buildChildren(),
//       secondChild: _buildChildren(),
//       firstCurve: Curves.easeIn,
//       secondCurve: Curves.easeOutBack,
//       crossFadeState:
//           isOpen ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//     );
//   }

//   Widget _buildChildren() {
//     return Column(
//       children: [
//         //*********** */ title ********

//         Padding(
//           padding: EdgeInsetsDirectional.only(bottom: 8.h, start: 4.w),
//           child: Align(
//             alignment: AlignmentDirectional.centerStart,
//             child: widget.title.isNotEmpty
//                 ? CustomText(
//                     title: widget.title,
//                     textStyle:
//                         widget.textStyle ?? FontStyleManager.subtitle1BlackM,
//                   )
//                 : null,
//           ),
//         ),

//         //*********** */ drop down ********
//         InkWell(
//           onTap: (widget.isLoading ?? false)
//               ? null
//               : () {
//                   setState(() {
//                     isOpen = !isOpen;
//                   });
//                   debugPrint('isOpen: ');
//                 },
//           child: Container(
//             width: widget.width,
//             height: widget.height ?? 40.h,
//             clipBehavior: Clip.antiAlias,
//             decoration: BoxDecoration(
//               color: widget.dropDownColor ?? ColorManager.neutralWhite,
//               borderRadius: BorderRadius.only(
//                 topLeft: const Radius.circular(8),
//                 topRight: const Radius.circular(8),
//                 bottomLeft: Radius.circular(isOpen ? 0 : 8),
//                 bottomRight: Radius.circular(isOpen ? 0 : 8),
//               ),
//               border: Border.all(
//                 color: widget.dropDownBorderColor ?? ColorManager.neutral300,
//                 width: 2,
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Text(
//                     (widget.isLoading ?? false)
//                         ? "loading".tr(context: context)
//                         : widget.selectedValue == ''
//                             ? widget.title
//                             : widget.selectedValue.toString(),
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 1,
//                     style: widget.textStyle ??
//                         TextStyle(
//                             fontSize: 14.sp,
//                             fontWeight: FontWeightManager.regular,
//                             color: ColorManager.neutral400),
//                   ),
//                 ),
//                 SvgPicture.asset(
//                   isOpen ? IconAssets.arrowUp : IconAssets.arrowDown,
//                   width: 15.w,
//                 )
//               ],
//             ).horizontalPadding(12),
//           ),
//         ),
//         if (isOpen)
//           Container(
//               width: widget.width,
//               clipBehavior: Clip.antiAlias,
//               decoration: BoxDecoration(
//                 color: widget.dropDownColor ?? ColorManager.neutralWhite,
//                 borderRadius: const BorderRadius.only(
//                   bottomRight: Radius.circular(8),
//                   bottomLeft: Radius.circular(8),
//                 ),
//                 border: Border.all(
//                   color: widget.dropDownBorderColor ?? ColorManager.neutral200,
//                   width: 2,
//                 ),
//               ),
//               child: widget.items == null || widget.items!.isEmpty
//                   ? CustomText(
//                       title: (widget.errorText == null ||
//                               widget.errorText!.isEmpty)
//                           ? "no_data_found".tr(context: context)
//                           : widget.errorText,
//                       maxLines: 1,
//                       textOverflow: TextOverflow.ellipsis,
//                       size: 14.sp,
//                       fontWeight: FontWeightManager.regular,
//                       color: ColorManager.neutral400,
//                     ).center().verticalPadding(12)
//                   : Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         for (int i = 0; i < widget.items!.length; i++)
//                           InkWell(
//                             onTap: () {
//                               setState(() {
//                                 widget.onChanged!(widget.items![i]);
//                                 isOpen = false;
//                               });
//                             },
//                             child: Container(
//                               width: widget.width ?? 285.w,
//                               decoration: BoxDecoration(
//                                 color: widget.dropDownColor ??
//                                     ColorManager.otherBlue.withOpacity(0.8),
//                                 border: Border.all(
//                                   color: widget.dropdownSeparatorColor ??
//                                       ColorManager.neutral200,
//                                   width: 1,
//                                 ),
//                               ),
//                               child: CustomText(
//                                 title: widget.items![i].value ?? '',
//                                 textStyle: widget.textStyle,
//                                 maxLines: 2,
//                                 textOverflow: TextOverflow.ellipsis,
//                               ).verticalPadding(4).horizontalPadding(10),
//                             ),
//                           ),
//                       ],
//                     ).verticalPadding(5))
//       ],
//     );
//   }
// }
