import 'package:beauty_station_web/features/main_page/views/widgets/header.dart';
import 'package:beauty_station_web/features/user_details/view/widgets/added_by.dart';
import 'package:beauty_station_web/features/user_details/view/widgets/extra_info.dart';
import 'package:beauty_station_web/features/user_details/view/widgets/media_data.dart';
import 'package:beauty_station_web/features/user_details/view/widgets/user_data.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.offWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //************ Header */
              Header(
                width: 1.sw,
                secPage: true,
              ),
              //************ User Data */
              const UserData(),
              20.verticalSpace,
              //************ Media Data */
              MediaData(),
              20.verticalSpace,
              //************ Extra Info */
              const ExtraInfo(),
              20.verticalSpace,
              //************ Added By */
              const AddedBy(),
              50.verticalSpace,
            ],
          ),
        ));
  }
}
