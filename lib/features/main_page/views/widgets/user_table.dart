// ignore_for_file: unnecessary_string_interpolations

import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_solution_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_solution_web/features/main_page/views/widgets/table_title.dart';
import 'package:beauty_solution_web/features/main_page/views/widgets/table_users.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:beauty_solution_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class UserTable extends StatelessWidget {
  final String tableName;
  final double rPadding;
  final bool isSalon;
  final List<SalonUserData>? salonData;
  final List<BeauticianUserData>? beauticianData;
  const UserTable({
    super.key,
    required this.tableName,
    required this.rPadding,
    required this.isSalon,
    this.salonData,
    this.beauticianData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.6.sw,
      height: 0.5.sh,
      decoration: BoxDecoration(
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          GetBuilder<MainController>(builder: (mainController) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                //************ Table Name */
                CustomText(
                  title: tableName,
                  textStyle: const TextStyle(color: ColorManager.black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                //************ Search Bar */
                Flexible(
                  child: CustomTextField(
                    hintText: 'بحث',
                    isRequired: false,
                    controller: isSalon ? mainController.salonSearchController : mainController.beauticianSearchController,
                    fillColor: ColorManager.neutral200,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: ColorManager.neutral400,
                    ).horizontalPadding(20),
                    onChange: (value) {
                      if (isSalon) {
                        mainController.fetchSalonUsers(value);
                      } else {
                        mainController.fetchBeauticianUsers(value);
                      }
                    },
                  ),
                )
              ],
            );
          }),
          20.verticalSpace,
          //************ Table Title */
          TiTleForTable(isSalon: isSalon),
          15.verticalSpace,
          const Divider(
            color: ColorManager.neutral200,
          ).horizontalPadding(40),
          15.verticalSpace,
          //************ Table Users */
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return DataForTable(
                      isSalon: isSalon,
                      id: isSalon ? '${salonData?[index].id ?? 'غير معروف'}' : '${beauticianData?[index].id ?? 'غير معروف'}',
                      name: isSalon ? '${salonData?[index].salonName ?? 'غير معروف'}' : '${beauticianData?[index].beauticianName ?? 'غير معروف'}',
                      numberId: isSalon ? '${salonData?[index].commercialRecordNumber ?? 'غير معروف'}' : '${beauticianData?[index].licenseNumber ?? 'غير معروف'}',
                      city: isSalon ? '${salonData?[index].locationName ?? 'غير معروف'}' : '${beauticianData?[index].locationName ?? 'غير معروف'}',
                      nation: isSalon ? 'لا يوجد' : '${beauticianData?[index].nationality ?? 'غير معروف'}',
                      emailAddress: isSalon ? '${salonData?[index].email ?? 'غير معروف'}' : '${beauticianData?[index].email ?? 'غير معروف'}',
                      phoneNumber: isSalon ? '${salonData?[index].mobileNumber ?? 'غير معروف'} ' : '${beauticianData?[index].mobileNumber ?? 'غير معروف'}',
                      index: index,
                      website: isSalon ? '${salonData?[index].website ?? 'غير معروف'}' : '${beauticianData?[index].website ?? 'غير معروف'}',
                      isAgreeToContract: isSalon ? salonData![index].isAgreeToContract ?? false : beauticianData![index].isAgreeToContract ?? false);
                },
                itemCount: isSalon ? salonData!.length : beauticianData!.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: ColorManager.neutral50,
                  ).horizontalPadding(40).verticalPadding(10);
                }),
          )
        ],
      ).allPadding(20),
    ).onlyPadding(tPadding: 50, rPadding: rPadding);
  }
}
