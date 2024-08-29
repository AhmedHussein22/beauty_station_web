import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_button.dart';
import 'package:beauty_solution_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class InviteToContact extends StatelessWidget {
  const InviteToContact({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (mainController) {
      return Form(
        key: mainController.inviteToContractFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //************ Close the POP-UP */
            IconButton(
                onPressed: () {
                  mainController.changeInviteToContract();
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
              controller: mainController.userEmailAddressController,
              fillColor: ColorManager.neutral200,
            ).horizontalPadding(50),
            //************ Edit contract percentage */
            CustomTextField(
              title: 'نسبة العقد',
              hintText: 'نسبة العقد',
              isRequired: true,
              controller: mainController.userContractPercentageController,
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
                    if (mainController.inviteToContractFormKey.currentState!.validate()) {
                      mainController.inviteToContractFormKey.currentState!.save();
                      mainController.userContractPercentageController.clear();
                      mainController.userEmailAddressController.clear();
                      //************ Save the data */
                      mainController.changeInviteToContract();
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
