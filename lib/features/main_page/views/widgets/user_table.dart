import 'package:beauty_station_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_station_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/table_title.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/table_users.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      width: 0.55.sw,
      decoration: BoxDecoration(
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              10.horizontalSpace,
              //************ Table Name */
              CustomText(
                title: tableName,
                textStyle: const TextStyle(
                    color: ColorManager.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          20.verticalSpace,
          //************ Table Title */
          TiTleForTable(isSalon: isSalon),
          15.verticalSpace,
          const Divider(
            color: ColorManager.neutral50,
          ).horizontalPadding(40),
          15.verticalSpace,
          //************ Table Users */
          ListView.separated(
              itemBuilder: (context, index) {
                return DataForTable(
                    isSalon: isSalon,
                    id: isSalon
                        ? salonData![index].id!.toString()
                        : beauticianData![index].id.toString(),
                    name: isSalon
                        ? salonData![index].salonName!
                        : beauticianData![index].beauticianName!,
                    numberId: isSalon
                        ? salonData![index].commercialRecordNumber!.toString()
                        : beauticianData![index].licenseNumber!.toString(),
                    city: isSalon
                        ? salonData![index].locationName!
                        : beauticianData![index].locationName!,
                    nation: isSalon
                        ? 'لا يوجد'
                        : beauticianData![index].nationality!,
                    emailAddress: isSalon
                        ? salonData![index].email!
                        : beauticianData![index].email!,
                    phoneNumber: isSalon
                        ? salonData![index].mobileNumber!
                        : beauticianData![index].mobileNumber! , index: index);
              },
              itemCount: isSalon ? salonData!.length : beauticianData!.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const Divider(
                  color: ColorManager.neutral50,
                ).horizontalPadding(40).verticalPadding(10);
              })
        ],
      ).allPadding(20),
    ).onlyPadding(tPadding: 50, rPadding: rPadding);
  }
}
