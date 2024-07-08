// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:rakeez/features/payment_feature/cubites/payment_cubit/payment_cubit.dart';
// import 'package:rakeez/features/payment_feature/views/payment_view.dart';
// import 'package:rakeez/resource/assets_manager.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/utils/app_utils/extentions.dart';
// import 'package:rakeez/utils/app_utils/navigators.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class FullInsuranceBottomSheet extends StatelessWidget {
//   const FullInsuranceBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> upgradeInsurance = [
//       'upgrade_of_insurance1'.tr(context: context),
//       'upgrade_of_insurance2'.tr(context: context),
//       'upgrade_of_insurance3'.tr(context: context),
//       'upgrade_of_insurance4'.tr(context: context),
//     ];

//     return SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           20.verticalSpace,
//           //! back button
//           Row(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   popRoute();
//                 },
//                 child: Container(
//                   width: 31.r,
//                   height: 31.r,
//                   margin: 16.hPadding,
//                   decoration: ShapeDecoration(
//                     color: ColorManager.neutralWhite,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.r)),
//                   ),
//                   child: Center(
//                     child: Icon(
//                       Icons.arrow_back_ios_rounded,
//                       size: 20.r,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           CustomText(
//             title: 'is_buy_full_insurance'.tr(context: context),
//             textStyle: FontStyleManager.subtitle1BlackB,
//           ),
//           20.verticalSpace,

//           const Divider(
//             color: ColorManager.neutral300,
//           ).horizontalPadding(25),
//           20.verticalSpace,
//           Container(
//             width: 1.sw,
//             decoration: BoxDecoration(
//               color: ColorManager.neutralWhite,
//               borderRadius: BorderRadius.circular(8.r),
//               border: Border.all(color: ColorManager.primary800, width: 1.5.r),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomText(
//                   title: '${'price_range'.tr(context: context)}631.11 ريال',
//                   textStyle: FontStyleManager.body2BlackM,
//                 ),
//                 CustomText(
//                   title: 'insurance_offer_production'.tr(context: context),
//                   textStyle: FontStyleManager.body2BlackM,
//                 ),
//               ],
//             ).horizontalPadding(8).verticalPadding(12),
//           ).horizontalPadding(25),
//           20.verticalSpace,
//           const BenifitsOfInsurnce(),
//           20.verticalSpace,
//           Container(
//             width: 270.w,
//             decoration: BoxDecoration(
//               color: ColorManager.rakeezOrange50,
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomText(
//                   title: 'upgrade_of_insurance'.tr(context: context),
//                   textStyle: FontStyleManager.subtitle2BlackSB,
//                 ),
//                 10.verticalSpace,
//                 for (int i = 0; i < upgradeInsurance.length; i++)
//                   Row(
//                     children: [
//                       SvgPicture.asset(IconAssets.rightIcon),
//                       8.horizontalSpace,
//                       CustomText(
//                         title: upgradeInsurance[i],
//                         textStyle: FontStyleManager.body2BlackM,
//                       ),
//                     ],
//                   ).verticalPadding(4).horizontalPadding(8),
//               ],
//             ).horizontalPadding(8).verticalPadding(12),
//           ).horizontalPadding(25),
//           20.verticalSpace,
//           customeButtomWidgte(
//             title: 'use_full_insurance'.tr(context: context),
//             subTitle: '1,896.6 ر.س',
//             color: ColorManager.primary900,
//             titleColor: ColorManager.neutralWhite,
//             supTitleColor: ColorManager.otherOrange,
//             onTap: () {
//               popRoute();
//             },
//           ),
//           20.verticalSpace,
//           customeButtomWidgte(
//             title: 'use_defilt_insurance'.tr(context: context),
//             subTitle: '1,265.49 ر.س',
//             color: ColorManager.rakeezBrown100,
//             titleColor: ColorManager.primary800,
//             supTitleColor: ColorManager.otherOrange,
//             onTap: () {
//               popRoute();
//               pushNewScreen(
//                 BlocProvider(
//                   create: (context) => PaymentCubit(),
//                   child: const PaymentView(),
//                 ),
//               );
//             },
//           ),
//           20.verticalSpace,
//         ],
//       ),
//     );
//   }

//   Widget customeButtomWidgte(
//       {required String title,
//       required String subTitle,
//       required Color color,
//       required Color titleColor,
//       required Color supTitleColor,
//       required Function() onTap}) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: 270.w,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(12.r),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CustomText(
//               title: title,
//               textStyle:
//                   FontStyleManager.subtitle2BlackSB.copyWith(color: titleColor),
//             ),
//             10.verticalSpace,
//             CustomText(
//               title: subTitle,
//               textStyle:
//                   FontStyleManager.body2BlackM.copyWith(color: supTitleColor),
//             ),
//           ],
//         ).horizontalPadding(8).verticalPadding(12),
//       ),
//     );
//   }
// }

// class BenifitsOfInsurnce extends StatefulWidget {
//   const BenifitsOfInsurnce({super.key});

//   @override
//   State<BenifitsOfInsurnce> createState() => _BenifitsOfInsurnceState();
// }

// class _BenifitsOfInsurnceState extends State<BenifitsOfInsurnce> {
//   bool isOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedCrossFade(
//       duration: const Duration(milliseconds: 400),
//       firstChild: _benifitsInsitanceTitle(),
//       secondChild: _benifitsInsitancewidget(),
//       firstCurve: Curves.easeIn,
//       secondCurve: Curves.easeOutBack,
//       crossFadeState:
//           !isOpen ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//     );
//   }

//   Widget _benifitsInsitanceTitle() {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isOpen = !isOpen;
//         });
//       },
//       child: Container(
//         width: 270.w,
//         decoration: BoxDecoration(
//           color: ColorManager.neutralWhite,
//           borderRadius: BorderRadius.circular(8.r),
//           border: Border.all(color: ColorManager.neutral300, width: 1.r),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CustomText(
//               title: 'benifits_of_insurance'.tr(context: context),
//               textStyle: FontStyleManager.body2BlackM,
//             ),
//             SvgPicture.asset(IconAssets.dropdownArrow)
//           ],
//         ).allPadding(12),
//       ),
//     );
//   }

//   Widget _benifitsInsitancewidget() {
//     List benifits = [
//       'الأخطار الطبيعية',
//       'ضرر كامل',
//       'مصاريف طبية',
//       'الأضرار المادية للطرف الثالث',
//       'السرقة',
//       'الحرائق',
//     ];
//     return Container(
//       width: 270.w,
//       decoration: BoxDecoration(
//         color: ColorManager.neutralWhite,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(8.r),
//           topRight: Radius.circular(8.r),
//         ),
//         border: Border.all(color: ColorManager.neutral300, width: 1.r),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           InkWell(
//             onTap: () {
//               setState(() {
//                 isOpen = !isOpen;
//               });
//             },
//             child: SizedBox(
//               width: 270.w,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   CustomText(
//                     title: 'benifits_of_insurance'.tr(context: context),
//                     textStyle: FontStyleManager.body2BlackM,
//                   ),
//                   SvgPicture.asset(IconAssets.arrowUp)
//                 ],
//               ),
//             ),
//           ).horizontalPadding(8),
//           10.verticalSpace,
//           const Divider(
//             color: ColorManager.neutral300,
//           ),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             itemCount: benifits.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: 8.r,
//                         height: 8.r,
//                         decoration: const BoxDecoration(
//                           color: ColorManager.primary800,
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       8.horizontalSpace,
//                       CustomText(
//                         title: benifits[index],
//                         textStyle: FontStyleManager.body2BlackM,
//                       ),
//                     ],
//                   ).allPadding(8),
//                   if (index != benifits.length - 1)
//                     const Divider(
//                       color: ColorManager.neutral300,
//                     ),
//                 ],
//               );
//             },
//           ),
//         ],
//       ).onlyPadding(tPadding: 8),
//     );
//   }
// }
