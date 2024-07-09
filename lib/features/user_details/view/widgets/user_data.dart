import 'package:beauty_station_web/features/user_details/view/widgets/custome_data_view.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/resource/font_weight_manger.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: Icon(
                      Icons.store,
                      size: 0.03.sw,
                      color: ColorManager.neutralWhite,
                    ),
                  ).horizontalPadding(20).verticalPadding(20),
                  //************ User Data Name*/
                  CustomText(
                    title: 'Beauty Station',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ),
                  //************ User Data Phone*/
                  CustomText(
                    title: '0554152145',
                    color: ColorManager.neutral900,
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                  //************ User Data Email*/
                  SelectableText(
                    'SalonY@gmail.com',
                    style: TextStyle(
                      color: ColorManager.neutral900,
                      fontSize: 14.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //************ User Data National ID*/
                        CustomeDataView(
                            title: 'رقم الهويه',
                            data: '12548596',
                            icon: Icons.contacts_rounded,
                            isLink: false,
                            isSelectable: false),
                        //************ User Data Address*/
                        CustomeDataView(
                            title: 'الموقع',
                            data: 'الرياض - حي النسيم - شارع النسيم العام',
                            icon: Icons.location_on,
                            isLink: false,
                            isSelectable: false),

                        //********** User Data Nationalty */
                        CustomeDataView(
                            title: 'الجنسيه',
                            data: 'سعودي',
                            icon: Icons.flag_circle,
                            isLink: false,
                            isSelectable: false),
                      ],
                    ).horizontalPadding(20),
                    const Divider().verticalPadding(10),
                    //************ User Data working hours*/
                    const Row(
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
                        ),

                        //************ User Data working hours holidays*/
                        CustomeDataView(
                          title: 'مواعيد العمل ايام الاجازات الرسميه',
                          data: ' Sunday to Monday From 08:00 AM to 05:00 PM',
                          icon: Icons.more_time_outlined,
                          isLink: false,
                          isSelectable: false,
                        ),
                        //************ User Data working hours events*/
                        CustomeDataView(
                          title: 'مواعيد العمل ايام المناسبات',
                          data: ' Sunday to Monday From 08:00 AM to 05:00 PM',
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
                        const CustomeDataView(
                          title: 'اسم البنك (اختياري)',
                          data: 'بنك الراجحي',
                          icon: Icons.account_balance,
                          isLink: false,
                          isSelectable: false,
                        ),
                        //************ User Data Bank IBAN*/
                        const CustomeDataView(
                          title: 'رقم الحساب / الايبان IBAN (اختياري) ',
                          data: 'SA123456789123456789123456789123456789',
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
                        const CustomeDataView(
                          title: 'رقم جوال خدمه العملاء',
                          data: '19525',
                          icon: Icons.call,
                          isLink: false,
                          isSelectable: false,
                        ),
                        //************ Store Data customer service Email*/
                        const CustomeDataView(
                          title: 'البريد الالكتروني لخدمه العملاء',
                          data: 'salonHotCall@gmail.com',
                          icon: Icons.email,
                          isLink: false,
                          isSelectable: true,
                        ),
                        Container(
                          width: 0.2.sw,
                        )
                      ],
                    ).horizontalPadding(20),
                    50.verticalSpace
                  ],
                ),
              )
            ]).horizontalPadding(50),
          ],
        )).horizontalPadding(20);
  }
}
