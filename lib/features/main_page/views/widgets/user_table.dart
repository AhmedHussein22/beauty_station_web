import 'package:beauty_station_web/features/main_page/data/users_model.dart';
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
  final List<Users> data;
  const UserTable(
      {super.key,
      required this.tableName,
      required this.rPadding,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.6.sw,
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
          const TiTleForTable(),
          20.verticalSpace,
          ListView.separated(
              itemBuilder: (context, index) {
                return DataForTable(
                    id: data[0].data![index].id!,
                    name: data[0].data![index].name!,
                    numberId: data[0].data![index].numberID!,
                    city: data[0].data![index].city!,
                    nation: data[0].data![index].nation!,
                    emailAddress: data[0].data![index].emailAddress!,
                    phoneNumber: data[0].data![index].phoneNumber!);
              },
              itemCount: data[0].data!.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const Divider(
                  color: ColorManager.neutral200,
                ).horizontalPadding(40).verticalPadding(10);
              })
        ],
      ).allPadding(20),
    ).onlyPadding(tPadding: 50, rPadding: rPadding);
  }
}
