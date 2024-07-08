// // ignore_for_file: use_build_context_synchronously

// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:lottie/lottie.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:rakeez/features/auth/login/cubites/otp_verified_cubit/otp_verified_cubit.dart';
// import 'package:rakeez/features/auth/login/cubites/otp_verified_cubit/otp_verified_state.dart';
// import 'package:rakeez/resource/assets_manager.dart';
// import 'package:rakeez/resource/color_manager.dart';
// import 'package:rakeez/resource/font_style_manager.dart';
// import 'package:rakeez/utils/app_utils/app_logs.dart';
// import 'package:rakeez/utils/app_utils/extentions.dart';
// import 'package:rakeez/widgets/custom_button.dart';
// import 'package:rakeez/widgets/custom_text.dart';

// class OTPBottomSheet extends StatelessWidget {
//   final String title, phoneOrMail;
//   final void Function() otpSussesAction;
//   final void Function()? onTap;
//   final bool isScrolling;

//   const OTPBottomSheet({
//     super.key,
//     required this.title,
//     required this.phoneOrMail,
//     required this.otpSussesAction,
//     this.onTap,
//     this.isScrolling = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final otpValidationCubit = context.read<OTPVerifiedCubit>();
//     final otpController = TextEditingController();
//     return Container(
//       height: 550.h,
//       padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//       decoration: const BoxDecoration(
//         color: ColorManager.neutralWhite,
//         border: Border(
//           top: BorderSide(
//             color: ColorManager.primary500,
//             width: 3,
//           ),
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(8)),
//       ),
//       child: SingleChildScrollView(
//         physics: isScrolling ? const AlwaysScrollableScrollPhysics() : const NeverScrollableScrollPhysics(),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // ******* Animated Image on top ********
//             Stack(
//               children: [
//                 Container(
//                   height: 285.h,
//                   decoration: const BoxDecoration(
//                     color: ColorManager.neutralWhite,
//                     image: DecorationImage(
//                       image: AssetImage(ImageAssets.logoPNG),
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         color: ColorManager.neutral300,
//                         icon: const Icon(CupertinoIcons.clear_circled_solid),
//                       )
//                     ],
//                   ).verticalPadding(12).horizontalPadding(12),
//                 ),
//                 Positioned(
//                   top: 50.h,
//                   right: 110.w,
//                   child: Lottie.asset(
//                     JsonAssets.notification,
//                     width: 180.w,
//                     height: 180.h,
//                   ),
//                 ),
//                 Positioned(
//                     top: 80.h,
//                     right: 200.w,
//                     child: Image.asset(
//                       ImageAssets.rakeezLogo,
//                       width: 55.w,
//                       height: 15.5.h,
//                     )),
//                 Positioned(
//                   top: 180.h,
//                   right: 170.w,
//                   child: Image.asset(
//                     ImageAssets.rakeezLogo,
//                     width: 55.w,
//                     height: 15.5.h,
//                   ),
//                 )
//               ],
//             ),

//             //* ********* OTP Verified *********
//             CustomText(
//               title: title == '' ? ' $title' : title,
//               color: ColorManager.neutral900,
//               textAlign: TextAlign.center,
//             ).allPadding(5),
//             // ********* OTP Text Field *********
//             Directionality(
//               textDirection: TextDirection.ltr,
//               child: PinCodeTextField(
//                 length: 6,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 enablePinAutofill: true,
//                  controller: otpController,
//                 appContext: context,
//                 pinTheme: PinTheme(
//                   shape: PinCodeFieldShape.box,
//                   borderRadius: BorderRadius.circular(8.r),
//                   fieldHeight: 40.h,
//                   fieldWidth: 38.w,
//                   fieldOuterPadding: 5.hPadding,
//                   activeFillColor: ColorManager.primary.withOpacity(0.1),
//                   inactiveFillColor: ColorManager.otherGray,
//                   selectedFillColor: ColorManager.primary.withOpacity(0.1),
//                   selectedColor: ColorManager.primary500,
//                   inactiveColor: ColorManager.otherGray,
//                   disabledColor: ColorManager.otherGray,
//                   errorBorderColor: ColorManager.otherLightRed,
//                   activeColor: ColorManager.primary500,
//                   borderWidth: 1,
//                 ),
//                 textStyle: FontStyleManager.body2BlackM,
//                 keyboardType: TextInputType.phone,
//                 cursorColor: ColorManager.primary,
//                 animationType: AnimationType.fade,
//                 animationDuration: const Duration(milliseconds: 300),
//                 enableActiveFill: true,
//                 onCompleted: (v) async {
//                   AppLogs.infoLog(v, 'onCompleted');
//                   if (isScrolling) {
//                     await otpValidationCubit.submitOTPVerified(
//                       context,
//                       emailAddress: phoneOrMail,
//                       otp: v,
//                       otpSussesAction: otpSussesAction,
//                     );
//                   } else {
//                     onTap?.call();
//                   }
//                 },
//               ),
//             ),
//             10.verticalSpace,
//             // ********* Check Button *********

//             // ********* Check Button *********

//             BlocSelector<OTPVerifiedCubit, OTPVerifiedState, bool>(
//               selector: (state) => state.maybeWhen(loading: () => true, orElse: () => false),
//               builder: (_, isLoading) {
//                 return CustomButton(
//                     text: 'check'.tr(context: context),
//                     loading: isLoading,
//                     onTap: () async {
//                       if (isScrolling) {
//                         await otpValidationCubit.submitOTPVerified(
//                           context,
//                           emailAddress: phoneOrMail,
//                           otp: otpController.text,
//                           otpSussesAction: otpSussesAction,
//                         );
//                       } else {
//                         onTap?.call();
//                       }
//                     });
//               },
//             ).horizontalPadding(55),

//             10.verticalSpace,
//             // ********* Timer *********

//             CountDownTime(emailOrPhone: phoneOrMail),

//             20.verticalSpace,
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CountDownTime extends StatefulWidget {
//   final String emailOrPhone;
//   const CountDownTime({
//     super.key,
//     required this.emailOrPhone,
//   });

//   @override
//   State<CountDownTime> createState() => _CountDownTimeState();
// }

// class _CountDownTimeState extends State<CountDownTime> {
//   Timer? _timer;
//   int _startTimer = 120;

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
//     return '  ${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}  ';
//   }

//   @override
//   Widget build(BuildContext context) {
//     final OTPVerifiedCubit verificationCubit = context.read<OTPVerifiedCubit>();

//     return BlocBuilder<OTPVerifiedCubit, OTPVerifiedState>(
//       builder: (context, state) {
//         return state.maybeWhen(
//           resendingOTP: () {
//             return SpinKitFadingCircle(
//               color: ColorManager.primary800,
//               size: 26.r,
//             );
//           },
//           orElse: () {
//             return _startTimer <= 0
//                 ? InkWell(
//                     onTap: () async {
//                       final succuss = await verificationCubit.resendOTP(context, emailAddress: widget.emailOrPhone);
//                       if (succuss) {
//                         setState(() {
//                           _startTimer = 120;
//                           startTimer();
//                         });
//                       }
//                     },
//                     child: CustomText(
//                       title: 'resend'.tr(context: context),
//                       underLine: true,
//                       size: 16,
//                       color: ColorManager.primary500,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   )
//                 : RichText(
//                     text: TextSpan(
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: 'can_send_ofter'.tr(context: context),
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 16.sp,
//                             color: ColorManager.neutral600,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                         TextSpan(
//                           text: timerString,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16.sp,
//                             color: ColorManager.neutral600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//           },
//         );
//       },
//     );
//   }
// }
