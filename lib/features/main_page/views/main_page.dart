import 'package:beauty_station_web/features/main_page/data/users_model.dart';
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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.offWhite,
      body: SingleChildScrollView(
        child: SizedBox(
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
                    Header(
                      width: 0.8.sw,
                    ),
                    26.verticalSpace,
                    Row(
                      children: [
                        50.horizontalSpace,
                        const CountWidget(
                          totalUsers: '45',
                          usersType: 'نوع صالون',
                          persintageUsers: '50% من العملاء',
                        ),
                        20.horizontalSpace,
                        const CountWidget(
                          totalUsers: '20',
                          usersType: 'نوع خبير تجميل',
                          persintageUsers: '35% من العملاء',
                        ),
                      ],
                    ),
                    26.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PieChartWidget(),
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
                            UserTable(
                              tableName: 'عملاء الصالون',
                              rPadding: 50,
                              data: userType1,
                            ),
                            UserTable(
                              tableName: 'عملاء خبير التجميل',
                              rPadding: 50,
                              data: userType2,
                            ),
                          ],
                        ),
                        20.horizontalSpace,
                        const AddedBy(),
                      ],
                    ),
                    50.verticalSpace
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
