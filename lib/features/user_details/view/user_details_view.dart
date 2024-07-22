import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/features/main_page/views/widgets/header.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/added_by.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/extra_info.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/media_data.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/user_data.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.offWhite,
        body: GetBuilder<MainController>(builder: (mainController) {
          final int id =
              int.parse(context.currentBeamPages.last.name!.split('-')[1]);
          final bool isSalon =
              int.parse(context.currentBeamPages.last.name!.split('-')[2]) == 1
                  ? true
                  : false;
          AppLogs.infoLog('UserDetailsView $id');
          AppLogs.infoLog('UserDetailsView $isSalon');
          return SingleChildScrollView(
            child: mainController.salonUserData.isEmpty ||
                    mainController.beauticianUserData.isEmpty
                ? SizedBox(
                    height: 0.5.sw,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.mainColor,
                      ),
                    ),
                  )
                : Column(
                    children: [
                      //************ Header */
                      Header(
                        width: 1.sw,
                        secPage: true,
                      ).horizontalPadding(50),
                      //************ User Data */
                      UserData(
                              salonUserData: isSalon
                                  ? mainController.salonUserData[id]
                                  : mainController.emptySalonUserData,
                              beauticianUserData: isSalon
                                  ? mainController.emptyBeauticianUserData
                                  : mainController.beauticianUserData[id],
                              isSalon: isSalon)
                          .horizontalPadding(50),
                      20.verticalSpace,
                      //************ Media Data */
                      MediaData(
                              salonUserData: isSalon
                                  ? mainController.salonUserData[id]
                                  : mainController.emptySalonUserData,
                              beauticianUserData: isSalon
                                  ? mainController.emptyBeauticianUserData
                                  : mainController.beauticianUserData[id],
                              isSalon: isSalon)
                          .horizontalPadding(50),
                      20.verticalSpace,
                      //************ Extra Info */
                      ExtraInfo(
                              salonUserData: isSalon
                                  ? mainController.salonUserData[id]
                                  : mainController.emptySalonUserData,
                              beauticianUserData: isSalon
                                  ? mainController.emptyBeauticianUserData
                                  : mainController.beauticianUserData[id],
                              isSalon: isSalon)
                          .horizontalPadding(50),
                      20.verticalSpace,
                      //************ Added By */
                      AddedBy(
                              salonUserData: isSalon
                                  ? mainController.salonUserData[id]
                                  : mainController.emptySalonUserData,
                              beauticianUserData: isSalon
                                  ? mainController.emptyBeauticianUserData
                                  : mainController.beauticianUserData[id],
                              isSalon: isSalon)
                          .horizontalPadding(50),
                      50.verticalSpace,
                    ],
                  ),
          );
        }));
  }
}
