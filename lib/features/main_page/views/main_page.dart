// ignore_for_file: unnecessary_null_comparison

import 'package:beauty_station_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/added_by_widget.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/bar_chart_widget.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/count_widget.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/drawer.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/header.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/pie_chart_widget.dart';
import 'package:beauty_station_web/features/main_page/views/widgets/user_table.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  int calculateThePercentage(int theMianValue, int theSecValue) {
    var resultOfPercentage = 0;
    resultOfPercentage =
        ((theMianValue / (theMianValue + theSecValue)) * 100).round();
    return theMianValue == 0 ? 0 : resultOfPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.offWhite,
      body: SingleChildScrollView(
        child: GetBuilder<MainController>(builder: (mainController) {
          return SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DrawerWidget(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //************ Header */
                      Header(
                        width: 0.8.sw,
                      ),
                      26.verticalSpace,
                      Row(
                        children: [
                          50.horizontalSpace,
                          //************ Count Widgets Salon*/
                          CountWidget(
                            totalUsers:
                                mainController.salonUserData.length.toString(),
                            usersType: 'نوع صالون',
                            persintageUsers: mainController
                                    .salonUserData.isEmpty
                                ? '0% من العملاء'
                                : '${calculateThePercentage(mainController.salonUserData.length, mainController.beauticianUserData.length)}% من العملاء',
                          ),
                          20.horizontalSpace,
                          //************ Count Widgets Beauty Expert*/
                          CountWidget(
                            totalUsers: mainController.beauticianUserData.length
                                .toString(),
                            usersType: 'نوع خبير تجميل',
                            persintageUsers: mainController
                                    .beauticianUserData.isEmpty
                                ? '0% من العملاء'
                                : '${calculateThePercentage(mainController.beauticianUserData.length, mainController.salonUserData.length)}% من العملاء',
                          ),
                        ],
                      ),
                      26.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PieChartWidget(
                            salonPercentage: mainController
                                    .salonUserData.isEmpty
                                ? 0
                                : calculateThePercentage(
                                    mainController.salonUserData.length,
                                    mainController.beauticianUserData.length),
                            bueatyPercentage: mainController
                                    .beauticianUserData.isEmpty
                                ? 0
                                : calculateThePercentage(
                                    mainController.beauticianUserData.length,
                                    mainController.salonUserData.length),
                          ),
                          30.horizontalSpace,
                          const BarChartWidget(),
                        ],
                      ).horizontalPadding(50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //************ User Table Salon*/
                              UserTable(
                                tableName: 'عملاء الصالون',
                                rPadding: 50,
                                salonData: mainController.salonUserData.isEmpty
                                    ? []
                                    : mainController.salonUserData,
                                isSalon: true,
                              ),
                              //  User Table Beauty Expert*/
                              UserTable(
                                tableName: 'عملاء خبير التجميل',
                                rPadding: 50,
                                beauticianData:
                                    mainController.beauticianUserData.isEmpty
                                        ? []
                                        : mainController.beauticianUserData,
                                isSalon: false,
                              ),
                            ],
                          ),
                          20.horizontalSpace,
                          //************ Added By */
                          AddedBy(
                            salonData: mainController.salonUserData.isEmpty
                                ? []
                                : mainController.salonUserData,
                          ),
                        ],
                      ),
                      50.verticalSpace
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
