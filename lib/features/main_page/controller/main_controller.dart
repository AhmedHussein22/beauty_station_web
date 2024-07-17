import 'package:beauty_station_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_station_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_station_web/features/main_page/repositories/main_repository.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/bar_chart_widget.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/enums_manager.dart';
import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  List<SalonUserData> salonUserData = [];
  List<BeauticianUserData> beauticianUserData = [];
  List<ChartData> cities = [
    ChartData(1, 'الرياض', 1, ColorManager.mainColor),
    ChartData(2, 'جدة', 3, ColorManager.secondaryColor),
    ChartData(3, 'مكة', 4, const Color(0xFF405D72)),
    ChartData(4, 'المدينة', 5, ColorManager.mainColor),
    ChartData(5, 'الدمام', 6, const Color(0xFFE6B9A6)),
    ChartData(6, 'الخبر', 2, const Color(0xFFB2A59B)),
    ChartData(7, 'الظهران', 3, ColorManager.mainColor),
    ChartData(8, 'أبها', 4, ColorManager.mainColor),
    ChartData(9, 'تبوك', 5, ColorManager.secondaryColor),
    ChartData(10, 'الطائف', 6, const Color(0xFFB2A59B)),
    ChartData(11, 'الجبيل', 2, ColorManager.secondaryColor),
    ChartData(12, 'حائل', 3, ColorManager.mainColor),
    ChartData(13, 'نجران', 4, const Color(0xFF405D72)),
    ChartData(14, 'ينبع', 5, const Color(0xFFE6B9A6)),
    ChartData(15, 'القصيم', 6, const Color(0xFFB2A59B)),
    ChartData(16, 'مشيط', 2, ColorManager.mainColor),
    ChartData(17, 'الأحساء', 3, const Color(0xFF405D72)),
    ChartData(18, 'الخفجي', 4, const Color(0xFFB2A59B)),
    ChartData(19, 'جازان', 5, ColorManager.secondaryColor),
    ChartData(20, 'سكاكا', 6, ColorManager.mainColor),
  ];
  List<AddedByModel> addedBy = [];
  SalonUserData emptySalonUserData = SalonUserData();
  BeauticianUserData emptyBeauticianUserData = BeauticianUserData();

//******* handling the values for cities for each salon and bueaty */
  Future<void> getCityData() async {
    for (final city in cities) {
      final int count = salonUserData
              .where((element) => element.city.toString() == city.id.toString())
              .toList()
              .length +
          beauticianUserData
              .where((element) => element.city.toString() == city.id.toString())
              .toList()
              .length;
      city.y = count.toDouble();
    }
    update();
  }

  //******* handling the values for added by for each salon and bueaty */
  Future<void> getAddedByData() async {
    List<dynamic> allUserData = [...salonUserData, ...beauticianUserData];
    for (final user in allUserData) {
      final int count = salonUserData
              .where((element) => element.registeredBy == user.registeredBy)
              .toList()
              .length +
          beauticianUserData
              .where((element) => element.registeredBy == user.registeredBy)
              .toList()
              .length;
      if (addedBy
          .where((element) => element.name == user.registeredBy)
          .isEmpty) {
        addedBy.add(AddedByModel(user.registeredBy, count));
      }
    }
    update();
  }

//******* */ fetch salon users from api *****************/
  Future<void> fetchSalonUsers() async {
    try {
      final response = await MainRepository().getSalonData();
      if (response.status == ApiStatus.success) {
        final salonUser = SalonUsers.fromJson(response.data);
        salonUserData = salonUser.data!;
        update();
      } else {
        //   Get.showSnackbar(GetSnackBar(
        //     message: response.message,
        //     duration: const Duration(seconds: 2),
        //   ));
      }
    } catch (e) {
      // Get.showSnackbar(GetSnackBar(
      //   message: e.toString(),
      //   duration: const Duration(seconds: 2),
      // ));
    }
  }

//******* */ fetch Beauticians users from api *****************/
  Future<void> fetchBeauticianUsers() async {
    try {
      final response = await MainRepository().getBeauticianData();
      AppLogs.infoLog(
          'Beautician state ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        final beauticianData = BeauticiansUsers.fromJson(response.data);
        beauticianUserData = beauticianData.data!;
        AppLogs.infoLog(
            'Beautician Data ############### ${beauticianData.data}');
        update();
      } else {
        // Get.showSnackbar(GetSnackBar(
        //   message: response.message,
        //   duration: const Duration(seconds: 2),
        // ));
      }
    } catch (e) {
      // Get.showSnackbar(GetSnackBar(
      //   message: e.toString(),
      //   duration: const Duration(seconds: 2),
      // ));
    }
  }

  @override
  void onInit() async {
    await fetchSalonUsers();
    await fetchBeauticianUsers();
    await getCityData();
    await getAddedByData();
    super.onInit();
  }
}

class AddedByModel {
  AddedByModel(this.name, this.count);
  final String name;
  final int count;
}
