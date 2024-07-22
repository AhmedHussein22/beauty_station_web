import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final double? elevation;
  final String? title;
  final Widget? titleWidget;
  final double? titleSize;
  final VoidCallback? onLeadingTap;
  final Widget? leadingIcon;
  final List<Widget>? actionIcons;
  final double leadingWidth;
  final double leadingHeight;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.elevation,
    this.title,
    this.leadingWidth = 30,
    this.leadingHeight = 30,
    this.titleSize,
    this.titleWidget,
    this.leadingIcon,
    this.centerTitle = true,
    this.actionIcons,
    this.onLeadingTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: backgroundColor ?? ColorManager.offWhite,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
      ),
      child: Container(
        color: backgroundColor ?? ColorManager.offWhite,
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: backgroundColor ?? ColorManager.offWhite,
          elevation: elevation ?? 0.0,
          actions: actionIcons ?? [],
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              //back icon
              leadingIcon ??
                  GestureDetector(
                    onTap: Navigator.canPop(context)
                        ? () {
                            Navigator.pop(context);
                          }
                        : () {
                            if (onLeadingTap != null) {
                              onLeadingTap!();
                            }
                          },
                    child: Container(
                      width: 30.r,
                      height: 30.r,
                      alignment: Alignment.center,
                      //padding: EdgeInsets.all(8.r),
                      margin:
                          EdgeInsetsDirectional.only(bottom: 8.h, start: 22.w),
                      decoration: ShapeDecoration(
                        color: ColorManager.offWhite,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20.r,
                          color: ColorManager.mainColor,
                        ),
                      ),
                    ),
                  ),
              const Spacer(),
              //title
              Expanded(
                flex: 2,
                child: titleWidget ??
                    CustomText(
                      title: title ?? '',
                      size: titleSize ?? (1.sw < 600 ? 16 : 18),
                      fontWeight: FontWeight.w700,
                      color: ColorManager.mainColor,
                    ),
              ),
              const Spacer()
            ],
          ),
          centerTitle: centerTitle,
          leadingWidth: 0.r,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
