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
  SalonUserData emptySalonUserData = SalonUserData();
  BeauticianUserData emptyBeauticianUserData = BeauticianUserData();
  TextEditingController salonSearchController = TextEditingController();
  TextEditingController beauticianSearchController = TextEditingController();

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
    List<dynamic> allUserData = [...salonUserData, ...beauticianUserData];

    for (final user in allUserData) {
      AppLogs.infoLog('Added By Data before ############### $addedBy  $allUserData');
      final int count = salonUserData.where((element) => element.registeredBy == user.registeredBy).toList().length + beauticianUserData.where((element) => element.registeredBy == user.registeredBy).toList().length;

      if (addedBy.where((element) => element.name == user.registeredBy).isEmpty) {
        addedBy.add(AddedByModel(user.registeredBy, count));
      }
      AppLogs.infoLog('Added By Data after ############### $addedBy  $allUserData');
    }

    update();
  }

//******* */ fetch salon users from api *****************/
  Future<void> fetchSalonUsers(filter) async {
    try {
      final response = await MainRepository().getSalonData(pageNumber: 1, pageSize: 100, filter: filter, asc: '');
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
  Future<void> fetchBeauticianUsers(filter) async {
    try {
      final response = await MainRepository().getBeauticianData(pageNumber: 1, pageSize: 100, filter: filter, asc: '');
      AppLogs.infoLog('Beautician state ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        final beauticianData = BeauticiansUsers.fromJson(response.data);
        beauticianUserData = beauticianData.data!;
        AppLogs.infoLog('Beautician Data ############### ${beauticianData.data}');
        update();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

  //******* */ resend contract for salon  *****************/
  Future<void> resendContract(String id, bool isSalon) async {
    try {
      final response = await MainRepository().resendContractSalon(id, isSalon);
      if (response.status == ApiStatus.success) {
        Get.showSnackbar(const GetSnackBar(
          message: 'تم إعادة إرسال بنجاح',
          duration: Duration(seconds: 2),
        ));
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
    await fetchSalonUsers('');
    await fetchBeauticianUsers('');
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
