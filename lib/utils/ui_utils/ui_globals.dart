// ignore_for_file: deprecated_member_use


class UIGlobal {
//   //**************** */ showBottomSheet *********************/
//   static Future<void> showBottomOTP(BuildContext context,
//       {double? height,
//       String? phoneOrMail,
//       String confirmationMethod = '',
//       required void Function() otpSussesAction}) async {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       constraints: const BoxConstraints(
//           maxWidth: double.infinity, minWidth: double.infinity),
//       backgroundColor: Colors.transparent,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(6),
//         ),
//       ),
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       builder: (BuildContext context) {
//         return OTPBottomSheet(
//           phoneOrMail: phoneOrMail ?? '',
//           title: confirmationMethod,
//           otpSussesAction: otpSussesAction,
//         );
//       },
//     );
//   }

//   //**************** */ showAlert delete or logout Dialog *********************/
//   static Future<void> displayAlertDialog(
//       {required BuildContext context,
//       String? title,
//       void Function()? onTapBtnOne,
//       void Function()? onTapBtnTow,
//       String? textOne,
//       String? textTwo,
//       List<Widget>? actions,
//       String? content}) async {
//     showDialog(
//       barrierDismissible: true,
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           actionsAlignment: MainAxisAlignment.start,
//           backgroundColor: ColorManager.neutralWhite,
//           insetPadding: EdgeInsets.zero,
//           titlePadding: EdgeInsets.zero,
//           actionsPadding: EdgeInsets.zero,
//           contentPadding: EdgeInsets.zero,
//           shape: RoundedRectangleBorder(borderRadius: 8.smoothBorderRadius),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               //* ************ */ Title *********************/
//               CustomText(
//                 title: title ?? '',
//                 color: ColorManager.otherRed2,
//                 size: 20,
//                 fontWeight: FontWeight.w600,
//               ),
//               10.verticalSpace,
//               //* ************ */ Content *********************/
//               CustomText(
//                 title: content,
//                 color: ColorManager.neutral950,
//                 size: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ],
//           ).horizontalPadding(30).verticalPadding(30),
//           actions: actions ??
//               [
//                 FittedBox(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       //* ************ */ Button One *********************/
//                       CustomButton(
//                         text: textOne ?? 'yes'.tr(context: context),
//                         onTap: onTapBtnOne ?? () => Navigator.pop(context),
//                         btnWidth: 155.w,
//                         isActive: true,
//                         disActiveColor: ColorManager.otherRed2,
//                         btnTextFontWeight: FontWeight.w700,
//                       ),
//                       20.horizontalSpace,
//                       //* ************ */ Button Tow *********************/
//                       CustomButton(
//                         text: textTwo ?? 'no'.tr(context: context),
//                         onTap: onTapBtnTow ?? () => Navigator.pop(context),
//                         btnWidth: 120.w,
//                         isActive: true,
//                         btnTextFontWeight: FontWeight.w700,
//                         disActiveColor: ColorManager.neutralWhite,
//                         btnTextColor: ColorManager.neutral200,
//                         borderColor: ColorManager.neutral200,
//                         borderWidth: 2,
//                       ),
//                     ],
//                   ).horizontalPadding(30).onlyPadding(bPadding: 20),
//                 ),
//               ],
//         );
//       },
//     );
//   }

// //**************** */ showBottomSheetNoService *********************/
//   static Future<void> showBottomSheet(context,
//       {Widget? child, double? hight}) async {
//     showModalBottomSheet(
//       context: context,
//       useSafeArea: true,
//       isScrollControlled: true,
//       backgroundColor: ColorManager.background,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(8.r))),
//       builder: (BuildContext context) {
//         return Container(
//           width: 1.sw,
//           height: hight,
//           color: ColorManager.background,
//           child: Padding(
//             padding: EdgeInsets.only(
//                 bottom: MediaQuery.viewInsetsOf(context).bottom),
//             child: child,
//           ),
//         );
//       },
//     );
//   }

// //**************** */ showBottomSheetNoService *********************/
//   static Future<void> showCustomTost(context, {String title = ''}) async {
//     showModalBottomSheet(
//       context: context,
//       useSafeArea: true,
//       backgroundColor: ColorManager.background,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//       ),
//       builder: (BuildContext context) {
//         return SizedBox(
//           width: 1.sw,
//           child: Padding(
//             padding: EdgeInsets.only(
//                 bottom: MediaQuery.viewInsetsOf(context).bottom),
//             child: CustomText(
//               title: title,
//               color: ColorManager.neutral900,
//             ).allPadding(15),
//           ),
//         );
//       },
//     );
//   }

//   static Future<void> showBottomSheetNoService(BuildContext context,
//       {double? height}) async {
//     showModalBottomSheet(
//       context: context,
//       constraints: const BoxConstraints(
//           maxWidth: double.infinity, minWidth: double.infinity),
//       useSafeArea: true,
//       backgroundColor: Colors.transparent,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(6),
//         ),
//       ),
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       builder: (BuildContext context) {
//         return Container(
//             height: 375.h,
//             decoration: const BoxDecoration(
//               color: ColorManager.neutralWhite,
//               border: Border(
//                 top: BorderSide(
//                   color: ColorManager.primary500,
//                   width: 3,
//                 ),
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(8)),
//             ),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: 285.h,
//                       decoration: const BoxDecoration(
//                         color: ColorManager.neutralWhite,
//                         image: DecorationImage(
//                           image: AssetImage(ImageAssets.logopng),
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           IconButton(
//                             onPressed: () => Navigator.pop(context),
//                             color: ColorManager.neutral300,
//                             icon:
//                                 const Icon(CupertinoIcons.clear_circled_solid),
//                           )
//                         ],
//                       ).verticalPadding(12).horizontalPadding(12),
//                     ),
//                     Positioned(
//                       top: 100.h,
//                       right: 170.w,
//                       child: Lottie.asset(
//                         JsonAssets.serviceCommingSoon,
//                         width: 60.w,
//                         height: 95.h,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 83.h,
//                   decoration: const BoxDecoration(
//                     color: ColorManager.neutral50,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SvgPicture.asset(
//                         IconAssets.error,
//                         width: 30,
//                         height: 30,
//                       ),
//                       CustomText(
//                         title: 'serviceNotAvailable'.tr(context: context),
//                         color: ColorManager.neutral900,
//                       ).horizontalPadding(12).verticalPadding(12),
//                     ],
//                   ),
//                 )
//               ],
//             ));
//       },
//     );
//   }

// //**************** */ showLoaderDialog *********************/
//   static Future showLoaderDialog() async {
//     AlertDialog alert = AlertDialog(
//       backgroundColor: Colors.transparent,
//       contentPadding: EdgeInsets.zero,
//       insetPadding: EdgeInsets.zero,
//       content: Container(
//         alignment: Alignment.center,
//         child: Center(
//           child: Lottie.asset(
//             JsonAssets.splahLottie,
//           ),
//         ),
//       ),
//     );
//     showDialog(
//       barrierDismissible: false,
//       barrierColor: ColorManager.neutralWhiteOff.withOpacity(0.4),
//       context: AppKeys.navigatorKey.currentContext!,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }

//   static void showSnackBar(BuildContext context,
//       {required String msg, Color? color, String? icon}) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         shape: RoundedRectangleBorder(borderRadius: 8.smoothBorderRadius),
//         animation: AnimationController(vsync: Scaffold.of(context)),
//         content: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (icon != null) SvgPicture.asset(icon, color: color),
//             10.horizontalSpace,
//             Expanded(
//               child: Text(
//                 msg,
//                 style: TextStyle(color: color ?? ColorManager.neutral900),
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: ColorManager.background,
//         duration: const Duration(seconds: 3),
//         behavior: SnackBarBehavior.floating,
//         margin: const EdgeInsets.all(32),
//       ),
//     );
//   }

// //**************** */ showAlertDialog *********************/
//   static Future<void> showAlertDialog({
//     required BuildContext context,
//     String? title,
//     void Function()? onTapBtnOne,
//     void Function()? onTapBtnTow,
//     String? textOne,
//     String? textTwo,
//     List<Widget>? actions,
//     String? content,
//   }) async {
//     showDialog(
//       barrierDismissible: true,
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           actionsAlignment: MainAxisAlignment.start,
//           backgroundColor: ColorManager.neutralWhite,
//           insetPadding: EdgeInsets.zero,
//           titlePadding: EdgeInsets.zero,
//           actionsPadding: EdgeInsets.zero,
//           contentPadding: EdgeInsets.zero,
//           shape: RoundedRectangleBorder(borderRadius: 8.smoothBorderRadius),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               //* ************ */ Title *********************/
//               CustomText(
//                 title: title ?? '',
//                 color: ColorManager.neutral600,
//                 size: 20,
//                 fontWeight: FontWeight.w600,
//               ),
//               //* ************ */ Content *********************/
//               CustomText(
//                 title: content,
//                 color: ColorManager.neutral950,
//                 size: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ],
//           ).horizontalPadding(30).verticalPadding(30),
//           actions: actions ??
//               [
//                 FittedBox(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       //* ************ */ Button One *********************/
//                       CustomButton(
//                         text: textOne ?? '',
//                         onTap: onTapBtnOne ?? () => Navigator.pop(context),
//                         btnWidth: 133.w,
//                         btnTextFontWeight: FontWeight.w700,
//                       ),
//                       20.horizontalSpace,
//                       //* ************ */ Button Tow *********************/
//                       CustomButton(
//                         text: textTwo ?? '',
//                         onTap: onTapBtnTow ?? () => Navigator.pop(context),
//                         btnWidth: 133.w,
//                         btnTextFontWeight: FontWeight.w700,
//                       ),
//                     ],
//                   ).horizontalPadding(30).onlyPadding(bPadding: 20),
//                 ),
//               ],
//         );
//       },
//     );
//   }

// //**************** */ Date Picker *********************/
//   static void showBottomSheetDatePicker(
//     BuildContext context, {
//     required Function(DateTime) onConfirm,
//     required int maxdays,
//     required int mindays,
//     bool yearOnly = false,
//     bool isBirthDate = false,
//     bool isonlyYear = false,
//     String? dateFormat = '',
//     bool? isHijri = false,
//     DateTime? initialDateTime,
//   }) {
//     DatePicker.showDatePicker(
//       context,
//       dateFormat: dateFormat!.isNotEmpty
//           ? dateFormat
//           : yearOnly
//               ? 'yyyy'
//               : 'dd-MM-yyyy',
//       initialDateTime: initialDateTime ?? DateTime.now(),
//       minDateTime: isBirthDate || isonlyYear
//           ? DateTime.now().subtract(Duration(days: mindays))
//           : DateTime.now().add(Duration(days: mindays)),
//       maxDateTime: isBirthDate
//           ? DateTime.now().subtract(Duration(days: maxdays))
//           : DateTime.now().add(Duration(days: maxdays)),
//       locale:
//           isHijri! ? DateTimePickerLocale.ar_SA : DateTimePickerLocale.ar_eg,
//       pickerTheme: DateTimePickerTheme(
//         backgroundColor: ColorManager.neutralWhite,
//         itemTextStyle: FontStyleManager.body1BlackSB,
//         confirm: Text('Done', style: FontStyleManager.body1BlackSB),
//         cancel: Text('Cancel', style: FontStyleManager.body1BlackSB),
//       ),
//       onConfirm: (DateTime dateTime, List<int> index) {
//         debugPrint('************************** dateTime: $dateTime');
//         onConfirm(dateTime);
//       },
//       onChange: (DateTime dateTime, List<int> index) {
//         // var formatter = DateFormat('yyyy-MMMM-dd');
//         // debugPrint('dateTime: $dateTime');
//         // var hijriDate = HijriCalendar.fromDate(dateTime);
//         // String formattedDate = formatter.format(DateTime(hijriDate.hYear, hijriDate.hMonth, hijriDate.hDay));
//         // debugPrint('**************************  Hijri date is ${hijriDate.toString()} $hijriDate = $formattedDate');
//       },
//       onMonthChangeStartWithFirstDate: true,
//     );
//   }

// //**************** */ convert Month to Hijry Month  *********************/
//   static convertMonthtoHijryMonth(int month) {
//     switch (month) {
//       case 1:
//         return 'محرم';
//       case 2:
//         return 'صفر';
//       case 3:
//         return 'ربيع الأول';
//       case 4:
//         return 'ربيع الثاني';
//       case 5:
//         return 'جمادى الأولى';
//       case 6:
//         return 'جمادى الثانية';
//       case 7:
//         return 'رجب';
//       case 8:
//         return 'شعبان';
//       case 9:
//         return 'رمضان';
//       case 10:
//         return 'شوال';
//       case 11:
//         return 'ذو القعدة';
//       case 12:
//         return 'ذو الحجة';
//       default:
//         return 'غير معروف';
//     }
//   }
}
