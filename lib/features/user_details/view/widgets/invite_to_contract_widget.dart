import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/features/user_details/controller/user_controller.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_button.dart';
import 'package:beauty_solution_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class InviteToContact extends StatelessWidget {
  final String id ;
  final bool isSalon;
  const InviteToContact({super.key, required this.id, required this.isSalon});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (userController) {
      return Form(
        key: userController.inviteToContractFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //************ Close the POP-UP */
            IconButton(
                onPressed: () {
                  userController.changeInviteToContract();
                },
                icon: Icon(
                  Icons.close,
                  size: 50.r,
                  color: ColorManager.neutralWhite,
                )).allPadding(15),
            //************ Edit email address */
            CustomTextField(
              title: 'البريد الإلكتروني',
              hintText: 'البريد الإلكتروني',
              isRequired: false,
              controller: userController.userEmailAddressController,
              fillColor: ColorManager.neutral200,
            ).horizontalPadding(50),
            //************ Edit contract percentage */
            CustomTextField(
              title: 'نسبة العقد',
              hintText: 'نسبة العقد',
              isRequired: true,
              controller: userController.userContractPercentageController,
              fillColor: ColorManager.neutral200,
              type: TextInputType.number,
            ).horizontalPadding(50),
            //************ Save button */
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: 'حفظ و أرسال نسخة من العقد',
                  btnWidth: 0.2.sw,
                  btnColor: ColorManager.secondaryColor,
                  btnTextColor: ColorManager.mainColor,
                  loading: false,
                  paddingVertical: 20.w,
                  onTap: () async {
                    if (userController.inviteToContractFormKey.currentState!.validate()) {
                      userController.inviteToContractFormKey.currentState!.save();
                      await userController.editUserData(id,isSalon);
                    }
                  },
                ),
              ],
            ).horizontalPadding(50),
          ],
        ),
      );
    });
  }
}
