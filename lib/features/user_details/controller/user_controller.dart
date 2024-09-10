// ignore_for_file: use_build_context_synchronously

import 'dart:html' as html;

import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/features/main_page/repositories/main_repository.dart';
import 'package:beauty_solution_web/features/user_details/data/beauticalModel.dart';
import 'package:beauty_solution_web/features/user_details/data/salonModel.dart';
import 'package:beauty_solution_web/features/user_details/repositories/user_repository.dart';
import 'package:beauty_solution_web/resource/enums_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  SalonUserModeldata salonUser = SalonUserModeldata(userData: SalonsModel());
  BeauticalUserModeldata beauticianUser = BeauticalUserModeldata(userData: BeauticiansModel());
  SalonUserModeldata emptySalonUserData = SalonUserModeldata(userData: SalonsModel());
  BeauticalUserModeldata emptyBeauticianUserData = BeauticalUserModeldata(userData: BeauticiansModel());
  TextEditingController userEmailAddressController = TextEditingController();
  TextEditingController userContractPercentageController = TextEditingController();
  bool inviteToContract = false;
  final GlobalKey<FormState> inviteToContractFormKey = GlobalKey<FormState>();
  bool deletingUser = false;

  //************ Get salon user data */
  Future<void> getSalonUserData(int id) async {
    try {
      AppLogs.infoLog('Get salon user data id ******************** $id');
      final response = await UserRepository().getSalonDataByID(id: id);
      AppLogs.infoLog('Get salon user data response ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        salonUser = SalonUserModeldata.fromJson(response.data);
        update();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

  //************ Get beautician user data */
  Future<void> getBeauticianUserData(int id) async {
    try {
      final response = await UserRepository().getBeauticianById(id: id);
      AppLogs.infoLog('Get beautician user data response ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        beauticianUser = BeauticalUserModeldata.fromJson(response.data);
        AppLogs.infoLog('Get beautician user data response ******************** $beauticianUser');

        update();
      } else {}
    } catch (e) {
      //add catch error
    }
  }

  void printInviteToContract() {
    AppLogs.infoLog('Invite to contract value before ############### $inviteToContract');
  }

  //***** Change invite to contract value */
  void changeInviteToContract() {
    AppLogs.infoLog('Invite to contract value before ############### $inviteToContract');
    inviteToContract = !inviteToContract;
    update();
  }

  //******************** Delete user *********/
  Future<void> deleteUser(String id, bool isSalon, BuildContext context) async {
    try {
      deletingUser = true;
      update();
      final response = await MainRepository().deleteUser(id, isSalon);
      if (response.status == ApiStatus.success) {
        Get.delete<UserController>();
        context.beamToNamed('/Home');
        deletingUser = false;
        Get.put(UserController());
        update();
      } else {}
    } catch (e) {
      deletingUser = false;
      update();
      //add catch error
    }
  }

  //******* */ Edit user Date *****************/
  Future<void> editUserData(String id, bool isSalon) async {
    try {
      changeInviteToContract();
      final response = await MainRepository().editUserData(id, userEmailAddressController.text, double.parse(userContractPercentageController.text), isSalon);
      AppLogs.infoLog('Edit user state ******************** ${response.status}');
      if (response.status == ApiStatus.success) {
        AppLogs.infoLog('Edit user state ******************** ${response.status}');
        html.window.location.reload();

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

  //******* */ resend contract from SMS  *****************/
  Future<void> resendContractSMS(String phone, String iD, String message) async {
    try {
      final response = await MainRepository().resendContractSalonSMS(phone, iD, message);
      if (response.status == ApiStatus.success) {
        AppLogs.infoLog('SMS sent successfully');
      } else {
        AppLogs.errorLog('SMS not sent');
      }
    } catch (e) {
      AppLogs.errorLog('SMS not sent');
    }
  }
}
