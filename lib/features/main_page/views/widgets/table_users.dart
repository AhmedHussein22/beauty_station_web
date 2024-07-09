import 'package:beamer/beamer.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataForTable extends StatefulWidget {
  final String id, name, numberId, city, nation, emailAddress, phoneNumber;
  const DataForTable({
    super.key,
    required this.id,
    required this.name,
    required this.numberId,
    required this.city,
    required this.nation,
    required this.emailAddress,
    required this.phoneNumber,
  });

  @override
  State<DataForTable> createState() => _DataForTableState();
}

class _DataForTableState extends State<DataForTable> {
  bool onHoverColor = false;
  void _onhover(bool value) {
    setState(() {
      onHoverColor = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.beamToNamed(
          '/UserDetails/${widget.name}-${widget.id}',
        );
      },
      onHover: _onhover,
      child: Row(
        children: [
          //************ Table Users Data ID */
          SizedBox(
            width: 40.w,
            child: Center(
              child: CustomText(
                title: widget.id,
                textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.mainColor
                      : ColorManager.secondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //************ Table Users Data Name */
          SizedBox(
            width: 100.w,
            child: CustomText(
              title: widget.name,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //************ Table Users Data Number ID */
          SizedBox(
            width: 150.w,
            child: CustomText(
              title: widget.numberId,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //************ Table Users Data Email Address */
          SizedBox(
            width: 180.w,
            child: CustomText(
              title: widget.emailAddress,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //************ Table Users Data Phone Number */
          SizedBox(
            width: 120.w,
            child: CustomText(
              title: widget.phoneNumber,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //************ Table Users Data City */
          SizedBox(
            width: 80.w,
            child: CustomText(
              title: widget.city,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //************ Table Users Data Nation */
          SizedBox(
            width: 200.w,
            child: CustomText(
              title: widget.nation,
              textStyle: TextStyle(
                  color: onHoverColor
                      ? ColorManager.secondaryColor
                      : ColorManager.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}
