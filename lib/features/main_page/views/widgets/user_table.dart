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
import 'package:get/get.dart';

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
      decoration: BoxDecoration(
        color: ColorManager.neutralWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      constraints: BoxConstraints(
        minHeight: 0.1.sh,
        minWidth: 0.6.sw,
        maxHeight: 0.25.sw,
        maxWidth: 0.6.sw,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                        mainController.fetchSalonUsers(value, 1);
                      } else {
                        mainController.fetchBeauticianUsers(value, 1);
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
          (isSalon ? salonData!.isEmpty : beauticianData!.isEmpty)
              ? const CustomText(
                  title: 'لا يوجد بيانات',
                  textStyle: TextStyle(color: ColorManager.neutral400, fontSize: 18),
                ).verticalPadding(45)
              : ListViewForUsers(
                  isSalon: isSalon,
                  salonData: salonData,
                  beauticianData: beauticianData,
                )
        ],
      ).allPadding(20),
    ).onlyPadding(tPadding: 50, rPadding: rPadding);
  }
}

class ListViewForUsers extends StatefulWidget {
  final bool isSalon;
  final List<SalonUserData>? salonData;
  final List<BeauticianUserData>? beauticianData;
  const ListViewForUsers({super.key, required this.isSalon, this.salonData, this.beauticianData});

  @override
  State<ListViewForUsers> createState() => _ListViewForUsersState();
}

class _ListViewForUsersState extends State<ListViewForUsers> {
  final scrollController = ScrollController();
  final MainController mainController = Get.find();
  int page = 2;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollController);
  }

  void _scrollController() async {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      if (widget.isSalon) {
        await mainController.fetchSalonUsers(mainController.salonSearchController.text, page);
        page = page + 1;
      } else {
        await mainController.fetchBeauticianUsers(mainController.beauticianSearchController.text, page);
        page = page + 1;
      }
    }
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return DataForTable(
                isSalon: widget.isSalon,
                id: widget.isSalon ? '${widget.salonData?[index].id ?? 'غير معروف'}' : '${widget.beauticianData?[index].id ?? 'غير معروف'}',
                name: widget.isSalon ? '${widget.salonData?[index].salonName ?? 'غير معروف'}' : '${widget.beauticianData?[index].beauticianName ?? 'غير معروف'}',
                numberId: widget.isSalon ? '${widget.salonData?[index].commercialRecordNumber ?? 'غير معروف'}' : '${widget.beauticianData?[index].licenseNumber ?? 'غير معروف'}',
                city: widget.isSalon ? '${widget.salonData?[index].locationName ?? 'غير معروف'}' : '${widget.beauticianData?[index].locationName ?? 'غير معروف'}',
                nation: widget.isSalon ? 'لا يوجد' : '${widget.beauticianData?[index].nationality ?? 'غير معروف'}',
                emailAddress: widget.isSalon ? '${widget.salonData?[index].email ?? 'غير معروف'}' : '${widget.beauticianData?[index].email ?? 'غير معروف'}',
                phoneNumber: widget.isSalon ? '${widget.salonData?[index].mobileNumber ?? 'غير معروف'} ' : '${widget.beauticianData?[index].mobileNumber ?? 'غير معروف'}',
                index: index,
                website: widget.isSalon ? '${widget.salonData?[index].website ?? 'غير معروف'}' : '${widget.beauticianData?[index].website ?? 'غير معروف'}',
                isAgreeToContract: widget.isSalon ? widget.salonData![index].isAgreeToContract ?? false : widget.beauticianData![index].isAgreeToContract ?? false);
          },
          controller: scrollController,
          itemCount: widget.isSalon ? widget.salonData!.length : widget.beauticianData!.length,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return const Divider(
              color: ColorManager.neutral50,
            ).horizontalPadding(40).verticalPadding(10);
          }),
    );
  }
}
