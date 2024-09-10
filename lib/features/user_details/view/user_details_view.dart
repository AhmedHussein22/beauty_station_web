// ignore_for_file: unnecessary_null_comparison

import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/features/main_page/views/widgets/header.dart';
import 'package:beauty_solution_web/features/user_details/controller/user_controller.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/added_by.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/extra_info.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/invite_to_contract_widget.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/media_data.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/user_data.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final int id = int.parse(context.currentBeamPages.last.name!.split('-')[1]);
    final bool isSalon = int.parse(context.currentBeamPages.last.name!.split('-')[2]) == 1 ? true : false;
    return Scaffold(
        backgroundColor: ColorManager.offWhite,
        body: GetBuilder<UserController>(
            init: UserController(),
            initState: (state) {
              if (isSalon) {
                Get.find<UserController>().getSalonUserData(id);
              } else {
                Get.find<UserController>().getBeauticianUserData(id);
              }
            },
            builder: (userController) {
              AppLogs.infoLog('${isSalon ? userController.salonUser.userData.salonName : userController.beauticianUser.userData.beauticianName}');
              return userController.salonUser == null || userController.beauticianUser == null
                  ? SizedBox(
                      height: 0.5.sw,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: ColorManager.mainColor,
                        ),
                      ),
                    )
                  : SingleChildScrollView(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              //************ Header */
                              Header(
                                width: 1.sw,
                                secPage: true,
                              ).horizontalPadding(50),
                              //************ User Data */
                              UserData(salonUserData: isSalon ? userController.salonUser.userData : userController.emptySalonUserData.userData, beauticianUserData: isSalon ? userController.emptyBeauticianUserData.userData : userController.beauticianUser.userData, isSalon: isSalon)
                                  .horizontalPadding(50),
                              20.verticalSpace,
                              //************ Media Data */
                              MediaData(salonUserData: isSalon ? userController.salonUser.userData : userController.emptySalonUserData.userData, beauticianUserData: isSalon ? userController.emptyBeauticianUserData.userData : userController.beauticianUser.userData, isSalon: isSalon)
                                  .horizontalPadding(50),
                              20.verticalSpace,
                              //************ Extra Info */
                              ExtraInfo(salonUserData: isSalon ? userController.salonUser.userData : userController.emptySalonUserData.userData, beauticianUserData: isSalon ? userController.emptyBeauticianUserData.userData : userController.beauticianUser.userData, isSalon: isSalon)
                                  .horizontalPadding(50),
                              20.verticalSpace,
                              //************ Added By */
                              AddedBy(salonUserData: isSalon ? userController.salonUser.userData : userController.emptySalonUserData.userData, beauticianUserData: isSalon ? userController.emptyBeauticianUserData.userData : userController.beauticianUser.userData, isSalon: isSalon)
                                  .horizontalPadding(50),
                              50.verticalSpace,
                            ],
                          ),
                          if (userController.inviteToContract)
                            Center(
                              child: Container(
                                height: 0.45.sh,
                                width: 0.5.sw,
                                color: ColorManager.mainColor,
                                child: InviteToContact(
                                  id: isSalon ? userController.salonUser.userData.id.toString() : userController.beauticianUser.userData.id.toString(),
                                  isSalon: isSalon,
                                ),
                              ),
                            ).verticalPadding(300),
                        ],
                      ),
                    );
            }));
  }
}
