import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/features/user_details/controller/user_controller.dart';
import 'package:get/get.dart';

class ControllersBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController(), permanent: true);
    Get.put<UserController>(UserController(), permanent: true);
  }
}
