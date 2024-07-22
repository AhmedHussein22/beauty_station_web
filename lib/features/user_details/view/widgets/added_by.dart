import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_solution_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddedBy extends StatelessWidget {
  final SalonUserData salonUserData;
  final BeauticianUserData beauticianUserData;
  final bool isSalon;
  const AddedBy({
    super.key,
    required this.salonUserData,
    required this.beauticianUserData,
    required this.isSalon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: ColorManager.neutralWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //************ Added By title */
            CustomText(
              title: 'تمت الاضافه بواسطه',
              color: ColorManager.neutral900,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeightManager.bold,
              ),
            ).horizontalPadding(20).verticalPadding(20),
            Row(children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //************ Added By Name */
                    CustomeDataView(
                      title: 'اسم المندوب',
                      data: isSalon
                          ? salonUserData.registeredBy ?? 'غير معروف'
                          : beauticianUserData.registeredBy ?? 'غير معروف',
                      icon: Icons.person,
                      isLink: false,
                      isSelectable: false,
                    ),
                    //************ Added By Phone */
                    CustomeDataView(
                      title: 'رقم الجوال',
                      data: isSalon
                          ? salonUserData.sellerMobile ?? 'غير معروف'
                          : beauticianUserData.sellerMobile ?? 'غير معروف',
                      icon: Icons.phone,
                      isLink: false,
                      isSelectable: false,
                    ),
                    //************ Added By Date */
                    CustomeDataView(
                      title: 'التاريخ',
                      data: isSalon
                          ? salonUserData.sellerRegistrationDate ?? 'غير معروف'
                          : beauticianUserData.sellerRegistrationDate ??
                              'غير معروف',
                      icon: Icons.date_range,
                      isLink: false,
                      isSelectable: false,
                    ),
                  ],
                ).horizontalPadding(20).onlyPadding(bPadding: 50),
              )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}
