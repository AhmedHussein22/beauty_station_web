import 'package:beauty_station_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_station_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_station_web/features/main_page/repositories/main_repository.dart';
import 'package:beauty_station_web/resource/enums_manager.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  List<SalonUserData> salonUserData = [];
  List<BeauticianUserData> beauticianUserData = [];
  SalonUserData emptySalonUserData = SalonUserData();
  BeauticianUserData emptyBeauticianUserData = BeauticianUserData();

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
      if (response.status == ApiStatus.success) {
        final beauticianData = BeauticiansUsers.fromJson(response.data);
        beauticianUserData = beauticianData.data!;
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
    super.onInit();
  }
}
