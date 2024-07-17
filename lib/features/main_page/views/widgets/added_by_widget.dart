import 'package:beauty_station_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddedBy extends StatelessWidget {
  final List<AddedByModel>? salonData;
  const AddedBy({super.key, required this.salonData});

  @override
  Widget build(BuildContext context) {
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
          //************ Added By title */
          const CustomText(
            title: 'تم التسجيل بواسطه',
            textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeightManager.bold,
                color: ColorManager.secondaryColor),
          ).horizontalPadding(25),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                iconColor: ColorManager.mainColor,
                leading: const Icon(Icons.person),
                //************ Added By name */
                title: Text(salonData?[index].name ?? '',
                    style: const TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 14,
                        fontWeight: FontWeightManager.bold)),
                //************ Added By count */
                trailing: Text('${salonData?[index].count ?? ''}',
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
            itemCount: salonData!.length > 5 ? 5 : salonData!.length,
          ),
          15.verticalSpace,
        ],
      ),
    );
  }
}

class AddedByList {
  AddedByList(this.name, this.count);
  final String name;
  final int count;
}
