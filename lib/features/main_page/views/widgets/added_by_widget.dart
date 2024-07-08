import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddedBy extends StatelessWidget {
  const AddedBy({super.key});

  @override
  Widget build(BuildContext context) {
    List<AddedByList> addedByList = [
      AddedByList('احمد علي', 5),
      AddedByList('محمد جمال', 3),
      AddedByList('أبو عماد', 4),
      AddedByList('خالد المصري', 1),
      AddedByList('أبو ليان', 2),
    ];
    return Container(
      width: 0.15.sw,
      decoration: BoxDecoration(
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.verticalSpace,
          const CustomText(
            title: 'تم التسجيل بواسطه',
            textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeightManager.bold,
                color: ColorManager.secondaryColor),
          ).horizontalPadding(15),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                iconColor: ColorManager.mainColor,
                leading: const Icon(Icons.person),
                title: Text(addedByList[index].name,
                    style: const TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 14,
                        fontWeight: FontWeightManager.bold)),
                trailing: Text(addedByList[index].count.toString(),
                    style: const TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 12,
                        fontWeight: FontWeightManager.semiBold)),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: ColorManager.neutral50,
              );
            },
            itemCount: addedByList.length,
          ),
        ],
      ),
    ).paddingOnly(top: 40);
  }
}

class AddedByList {
  AddedByList(this.name, this.count);
  final String name;
  final int count;
}
