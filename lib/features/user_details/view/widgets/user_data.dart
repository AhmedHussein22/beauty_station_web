// ignore_for_file: unnecessary_string_interpolations

import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
import 'package:beauty_solution_web/features/main_page/data/users_salon_data.dart';
import 'package:beauty_solution_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/resource/font_weight_manger.dart';
import 'package:beauty_solution_web/services/api/end_points.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/utils/app_utils/helpers_functions.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class UserData extends StatelessWidget {
  final bool isSalon;
  final SalonUserData salonUserData;
  final BeauticianUserData beauticianUserData;
  const UserData({
    super.key,
    required this.salonUserData,
    required this.beauticianUserData,
    required this.isSalon,
  });

  bool returnValidation() {
    bool isValid = isSalon ? salonUserData.isAgreeToContract ?? false : beauticianUserData.isAgreeToContract ?? false;
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (mainController) {
        return Container(
            decoration: BoxDecoration(
              color: ColorManager.neutralWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //************ User Data Title*/
                CustomText(
                  title: 'بيانات المستخدم',
                  color: ColorManager.neutral900,
                  textStyle: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeightManager.bold,
                  ),
                ).horizontalPadding(20).verticalPadding(20),
                Row(children: [
                  Column(
                    children: [
                      //************ User Data Image*/
                      CircleAvatar(
                        radius: 80.r,
                        backgroundColor: ColorManager.neutral400,
                        child: isSalon
                            ? Icon(
                                Icons.store,
                                size: 0.03.sw,
                                color: ColorManager.neutralWhite,
                              )
                            : beauticianUserData.profileImages!.isEmpty
                                ? Icon(
                                    Icons.person,
                                    size: 0.03.sw,
                                    color: ColorManager.neutralWhite,
                                  )
                                : ClipOval(
                                    child: Image.network(
                                      '${EndPoints.media}${beauticianUserData.profilePicture}',
                                      width: 0.15.sw,
                                      height: 0.15.sw,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                      ).horizontalPadding(20).verticalPadding(20),
                      //************ User Data Name*/
                      Row(
                        children: [
                          CustomText(
                            title: isSalon ? salonUserData.salonName : beauticianUserData.beauticianName,
                            textStyle: TextStyle(
                              color: ColorManager.thiredColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeightManager.bold,
                            ),
                          ),
                          5.horizontalSpace,
                          if (returnValidation())
                            Icon(
                              Icons.verified,
                              color: ColorManager.mainColor,
                              size: 20.sp,
                            ),
                        ],
                      ),
                      //************ User Data Phone*/
                      CustomText(
                        title: isSalon ? salonUserData.mobileNumber : beauticianUserData.mobileNumber,
                        color: ColorManager.neutral900,
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeightManager.regular,
                        ),
                      ),
                      //************ User Data Email*/
                      SelectableText(
                        isSalon ? '${salonUserData.email ?? 'غير معروف'}' : '${beauticianUserData.email ?? 'غير معروف'}',
                        style: TextStyle(
                          color: ColorManager.neutral900,
                          fontSize: 14.sp,
                          fontWeight: FontWeightManager.regular,
                        ),
                      ),

                      //************* Contract  */
                      if (returnValidation())
                        Row(
                          children: [
                            const CustomText(
                              title: 'صوره العقد',
                            ),
                            IconButton(
                                onPressed: () {
                                  AppLogs.infoLog('****** Call fetch File PDF');
                                  HelperFunctions.launchURL('https://beautycenter.runasp.net/api/${isSalon ? 'Salons' : 'Beauticians'}/SendAgreementPdf?id=${isSalon ? salonUserData.id : beauticianUserData.id}');
                                },
                                icon: const Icon(Icons.print))
                          ],
                        ),
                      15.verticalSpace,
                      if (returnValidation())
                        InkWell(
                          onTap: () {
                            AppLogs.infoLog('****** Call resend Contract');
                            mainController.resendContract(isSalon ? salonUserData.id.toString() : beauticianUserData.id.toString(), isSalon);
                          },
                          child: const CustomText(
                            title: ' اعاده ارسال الشروط و الاحكام ',
                            underLine: true,
                          ),
                        ),
                    ],
                  ),
                  10.horizontalSpace,
                  //************ Horizontal Divider*/
                  Container(
                    width: 0.001.sw,
                    height: 0.3.sh,
                    color: ColorManager.neutral200,
                  ).verticalPadding(50),
                  //************ User Data Details*/
                  Expanded(
                    child: Column(
                      children: [
                        //************ User Data Info*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //************ User Data National ID*/
                            CustomeDataView(title: 'رقم عضويه المشترك', data: isSalon ? '${salonUserData.id ?? 'غير معروف'}' : '${beauticianUserData.id ?? 'غير معروف'}', icon: Icons.contacts_rounded, isLink: false, isSelectable: false),
                            //************ User Data Address*/
                            CustomeDataView(
                                title: 'الموقع',
                                data: isSalon ? salonUserData.locationName ?? 'غير معروف' : beauticianUserData.locationName ?? 'غير معروف',
                                icon: Icons.location_on,
                                extraLink: 'https://www.google.com/maps/search/?api=1&query=${isSalon ? salonUserData.latitude : beauticianUserData.latitude},${isSalon ? salonUserData.longitude : beauticianUserData.longitude}',
                                isLink: true,
                                isExtraLink: true,
                                isSelectable: false),

                            //********** User Data Nationalty */
                            !isSalon
                                ? CustomeDataView(title: 'الجنسيه', data: beauticianUserData.nationality ?? 'غير معروف', icon: Icons.flag_circle, isLink: false, isSelectable: false)
                                : SizedBox(
                                    width: 0.2.sw,
                                  ),
                          ],
                        ).horizontalPadding(20),
                        const Divider().verticalPadding(10),
                        //************ User Data working hours*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //************ User Data working hours*/
                            CustomeDataView(
                              title: 'مواعيد العمل الرسميه',
                              data: ' Sunday to Monday From 08:00 AM to 05:00 PM',
                              icon: Icons.timelapse_sharp,
                              isLink: false,
                              isSelectable: false,
                              isWorkingHours: true,
                              workingHours: ListView.builder(
                                shrinkWrap: true,
                                itemCount: isSalon ? salonUserData.workingHours!.length : beauticianUserData.workingHours!.length,
                                itemBuilder: (context, index) {
                                  final workingHoursday = isSalon ? '${salonUserData.workingHours?[index].day ?? 'غير معروف'}' : '${beauticianUserData.workingHours?[index].day ?? 'غير معروف'}';
                                  final workingHoursfrom = isSalon ? '${salonUserData.workingHours?[index].from ?? 'غير معروف'}' : '${beauticianUserData.workingHours?[index].from ?? 'غير معروف'}';
                                  final workingHoursto = isSalon ? '${salonUserData.workingHours?[index].to ?? 'غير معروف'}' : '${beauticianUserData.workingHours?[index].to ?? 'غير معروف'}';
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            title: workingHoursday,
                                            textStyle: TextStyle(
                                              color: ColorManager.neutral400,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeightManager.bold,
                                            ),
                                          ),
                                          CustomText(
                                            title: '$workingHoursfrom - $workingHoursto',
                                            textStyle: TextStyle(
                                              color: ColorManager.neutral400,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeightManager.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      10.verticalSpace
                                    ],
                                  );
                                },
                              ),
                            ),

                            //************ User Data working hours holidays*/
                            CustomeDataView(
                              title: 'مواعيد العمل ايام الاجازات الرسميه',
                              data: isSalon ? salonUserData.holidayWorkingHours ?? 'غير معروف' : beauticianUserData.holidayWorkingHours ?? 'غير معروف',
                              icon: Icons.more_time_outlined,
                              isLink: false,
                              isSelectable: false,
                            ),
                            //************ User Data working hours events*/
                            CustomeDataView(
                              title: 'مواعيد العمل ايام المناسبات',
                              data: isSalon ? salonUserData.festivalWorkingHours ?? 'غير معروف' : beauticianUserData.festivalWorkingHours ?? 'غير معروف',
                              icon: Icons.more_time_outlined,
                              isLink: false,
                              isSelectable: false,
                            ),
                          ],
                        ).horizontalPadding(20),
                        const Divider().verticalPadding(25),
                        //************ User Data Bank Info*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //************ User Data Bank Name*/
                            CustomeDataView(
                              title: 'اسم البنك (اختياري)',
                              data: isSalon ? salonUserData.bankName ?? 'غير معروف' : beauticianUserData.bankName ?? 'غير معروف',
                              icon: Icons.account_balance,
                              isLink: false,
                              isSelectable: false,
                            ),
                            //************ User Data Bank IBAN*/
                            CustomeDataView(
                              title: 'رقم الحساب / الايبان IBAN (اختياري) ',
                              data: isSalon ? salonUserData.iban ?? 'غير معروف' : beauticianUserData.iban ?? 'غير معروف',
                              icon: Icons.check_circle_rounded,
                              isLink: false,
                              isSelectable: false,
                            ),
                            Container(
                              width: 0.2.sw,
                            )
                          ],
                        ).horizontalPadding(20),
                        const Divider().verticalPadding(25),
                        //************ Store Data Info*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //************ Store Data Customer service number*/
                            CustomeDataView(
                              title: 'رقم جوال خدمه العملاء',
                              data: isSalon ? salonUserData.customerServicePhone ?? 'غير معروف' : beauticianUserData.customerServicePhone ?? 'غير معروف',
                              icon: Icons.call,
                              isLink: false,
                              isSelectable: false,
                            ),
                            //************ Store Data customer service Email*/
                            CustomeDataView(
                              title: 'البريد الالكتروني لخدمه العملاء',
                              data: isSalon ? salonUserData.customerServiceEmail ?? 'غير معروف' : beauticianUserData.customerServiceEmail ?? 'غير معروف',
                              icon: Icons.email,
                              isLink: false,
                              isSelectable: true,
                            ),
                            //************ Store Data Contract Precentage*/
                            CustomeDataView(
                              title: 'نسبه التعاقد',
                              data: isSalon ? '${salonUserData.contractPrecentage.toString() ?? 'غير معروف'} %' : '${beauticianUserData.contractPrecentage.toString() ?? 'غير معروف'} %',
                              icon: Icons.price_change_sharp,
                              isLink: false,
                              isSelectable: true,
                            ),
                          ],
                        ).horizontalPadding(20),
                        50.verticalSpace
                      ],
                    ),
                  )
                ]).horizontalPadding(50),
              ],
            ));
      },
    ).horizontalPadding(20);
  }
}
