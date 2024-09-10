// ignore_for_file: use_build_context_synchronously

import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_solution_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_solution_web/features/main_page/repositories/main_repository.dart';
import 'package:beauty_solution_web/features/main_page/views/widgets/bar_chart_widget.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/enums_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  List<SalonUserData> salonUserData = [];
  List<BeauticianUserData> beauticianUserData = [];
  List<ChartData> cities = [
    ChartData(1, 'الرياض', 0, ColorManager.mainColor),
    ChartData(2, 'جدة', 0, ColorManager.secondaryColor),
    ChartData(3, 'مكة', 0, ColorManager.thiredColor),
    ChartData(4, 'المدينة', 0, ColorManager.mainColor),
    ChartData(5, 'الدمام', 0, const Color(0xFFE6B9A6)),
    ChartData(6, 'الخبر', 0, const Color(0xFFB2A59B)),
    ChartData(7, 'الظهران', 0, ColorManager.mainColor),
    ChartData(8, 'أبها', 0, ColorManager.mainColor),
    ChartData(9, 'تبوك', 0, ColorManager.secondaryColor),
    ChartData(10, 'الطائف', 0, const Color(0xFFB2A59B)),
    ChartData(11, 'الجبيل', 0, ColorManager.secondaryColor),
    ChartData(12, 'حائل', 0, ColorManager.mainColor),
    ChartData(13, 'نجران', 0, ColorManager.thiredColor),
    ChartData(14, 'ينبع', 0, const Color(0xFFE6B9A6)),
    ChartData(15, 'القصيم', 0, const Color(0xFFB2A59B)),
    ChartData(16, 'مشيط', 0, ColorManager.mainColor),
    ChartData(17, 'الأحساء', 0, ColorManager.thiredColor),
    ChartData(18, 'الخفجي', 0, const Color(0xFFB2A59B)),
    ChartData(19, 'جازان', 0, ColorManager.secondaryColor),
    ChartData(20, 'سكاكا', 0, ColorManager.mainColor),
  ];
  List<AddedByModel> addedBy = [];
  TextEditingController salonSearchController = TextEditingController();
  TextEditingController beauticianSearchController = TextEditingController();
  int pageforSlaon = 1;
  int pageforBeauty = 1;

  //********* Empty user data */
  void clearUserData() {
    salonUserData.clear();
    beauticianUserData.clear();
    update();
  }
//******* handling the values for cities for each salon and bueaty */
  Future<void> getCityData() async {
    for (final city in cities) {
      final int count = salonUserData.where((element) => element.city.toString() == city.id.toString()).toList().length + beauticianUserData.where((element) => element.city.toString() == city.id.toString()).toList().length;
      city.y = count;
    }
    update();
  }

  //******* handling the values for added by for each salon and bueaty */
  Future<void> getAddedByData() async {
    // List<dynamic> allUserData = [salonUserData, beauticianUserData];
    for (final user in salonUserData) {
      final int count = salonUserData.where((element) => element.registeredBy == user.registeredBy).toList().length + beauticianUserData.where((element) => element.registeredBy == user.registeredBy).toList().length;

      if (addedBy.where((element) => element.name == user.registeredBy).isEmpty) {
        addedBy.add(AddedByModel(user.registeredBy!, count));
      }
    }
    for (final user in beauticianUserData) {
      final int count = beauticianUserData.where((element) => element.registeredBy == user.registeredBy).toList().length + beauticianUserData.where((element) => element.registeredBy == user.registeredBy).toList().length;

      if (addedBy.where((element) => element.name == user.registeredBy).isEmpty) {
        addedBy.add(AddedByModel(user.registeredBy!, count));
      }
    }
    AppLogs.infoLog('Added By Data after ############### ${addedBy.length}  usersalon ${salonUserData.length} userbeautician ${beauticianUserData.length}');
    update();
  }

//************ fetch salon users from api after search */
  Future<void> fetchSalonUsersForSearch({
    filter,
  }) async {
    try {
      final response = await MainRepository().getSalonData(pageNumber: 1, pageSize: 100, filter: filter, asc: '');
      if (response.status == ApiStatus.success) {
        salonUserData = SalonUsers.fromJson(response.data).data!;

        update();
        await getCityData();
        await getAddedByData();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

//******* */ fetch salon users from api *****************/
  Future<void> fetchSalonUsers({filter, int? page}) async {
    try {
      final response = await MainRepository().getSalonData(pageNumber: page ?? pageforSlaon, pageSize: 30, filter: filter, asc: '');
      if (response.status == ApiStatus.success) {
        final salonUser = SalonUsers.fromJson(response.data);
        salonUserData.addAll(salonUser.data!);
        AppLogs.infoLog('before pageforSlaon $pageforSlaon');
        pageforSlaon = pageforSlaon + 1;
        AppLogs.infoLog('pageforSlaon $pageforSlaon');
        update();
        await getCityData();
        await getAddedByData();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

//************ fetch Beauticians users from api after search */
  Future<void> fetchBeauticianUsersForSearch({filter}) async {
    try {
      final response = await MainRepository().getBeauticianData(pageNumber: 1, pageSize: 100, filter: filter, asc: '');
      AppLogs.infoLog('Beautician state ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        beauticianUserData = BeauticiansUsers.fromJson(response.data).data!;
        AppLogs.infoLog('Beautician Data ############### $beauticianUserData');
        update();
        await getCityData();
        await getAddedByData();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

//******* */ fetch Beauticians users from api *****************/
  Future<void> fetchBeauticianUsers({filter, int? page}) async {
    try {
      final response = await MainRepository().getBeauticianData(pageNumber: page ?? pageforBeauty, pageSize: 30, filter: filter, asc: '');
      AppLogs.infoLog('Beautician state ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        final beauticianData = BeauticiansUsers.fromJson(response.data);
        beauticianUserData.addAll(beauticianData.data!);
        pageforBeauty = pageforBeauty + 1;
        AppLogs.infoLog('Beautician Data ############### ${beauticianData.data}');
        update();
        await getCityData();
        await getAddedByData();
      } else {}
    } catch (e) {
      //add catch error
    }
  }
}

class AddedByModel {
  AddedByModel(this.name, this.count);
  final String name;
  final int count;
}
