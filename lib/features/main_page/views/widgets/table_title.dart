import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TiTleForTable extends StatelessWidget {
  final bool isSalon;
  const TiTleForTable({super.key, required this.isSalon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        55.horizontalSpace,
        //************ Table name */
        SizedBox(
          width: 170.w,
          child: const CustomText(
            title: 'الاسم',
            textStyle: TextStyle(color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table number ID */
        // SizedBox(
        //   width: 120.w,
        //   child: const CustomText(
        //     title: 'رقم الترخيص',
        //     textStyle: TextStyle(overflow: TextOverflow.ellipsis, color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
        //   ),
        // ),
        //  Table email address */
        SizedBox(
          width: !isSalon ? 270.w : 220.w,
          child: const CustomText(
            title: 'البريد الاليكتروني',
            textStyle: TextStyle(color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table phone number */
        SizedBox(
          width: !isSalon ? 150.w : 120.w,
          child: const CustomText(
            title: 'رقم الجوال',
            textStyle: TextStyle(color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table city */
        !isSalon
            ? const SizedBox()
            : SizedBox(
                width: 180.w,
                child: const CustomText(
                  title: 'المدينة',
                  textStyle: TextStyle(color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
        // if (isSalon) 15.horizontalSpace,
        // //************ Table nation */
        // isSalon
        //     ? const SizedBox()
        //     : SizedBox(
        //         width: 100.w,
        //         child: const CustomText(
        //           title: 'الجنسيه',
        //           textStyle: TextStyle(
        //               color: ColorManager.mainColor,
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        SizedBox(
          width: 150.w,
          child: const CustomText(
            title: 'موافق علي العقد',
            textStyle: TextStyle(color: ColorManager.mainColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
