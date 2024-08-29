import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataForTable extends StatefulWidget {
  final bool isSalon, isAgreeToContract;
  final String id, name, numberId, city, nation, emailAddress, phoneNumber, website;
  final int index;
  const DataForTable({
    super.key,
    required this.id,
    required this.name,
    required this.numberId,
    required this.city,
    required this.nation,
    required this.emailAddress,
    required this.phoneNumber,
    required this.isSalon,
    required this.index,
    required this.website,
    required this.isAgreeToContract,
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

  bool returnValidation() {
    bool isValid = widget.isSalon ? widget.isAgreeToContract : widget.isAgreeToContract;
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.beamToNamed('/UserDetails/${widget.name}-${widget.index}-${widget.isSalon ? '1' : '0'}');
      },
      onHover: _onhover,
      child: Row(children: [
        //************ Table Users Data ID */
        SizedBox(
          width: 55.w,
          child: Center(
            child: CustomText(
              title: '${widget.index + 1}',
              textStyle: TextStyle(
                color: onHoverColor ? ColorManager.mainColor : ColorManager.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        //************ Table Users Data Name */
        SizedBox(
          width: 170.w,
          child: CustomText(
            title: widget.name,
            textStyle: TextStyle(color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table Users Data Number ID */
        // SizedBox(
        //   width: 120.w,
        //   child: CustomText(
        //     title: widget.numberId,
        //     textStyle: TextStyle(overflow: TextOverflow.ellipsis, color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, fontSize: 16, fontWeight: FontWeight.bold),
        //   ),
        // ),
        //************ Table Users Data Email Address */
        SizedBox(
          width: !widget.isSalon ? 270.w : 220.w,
          child: CustomText(
            title: widget.emailAddress,
            textStyle: TextStyle(color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, overflow: TextOverflow.ellipsis, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table Users Data Phone Number */
        SizedBox(
          width: !widget.isSalon ? 150.w : 120.w,
          child: CustomText(
            title: widget.phoneNumber,
            textStyle: TextStyle(color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        //************ Table Users Data City */
        !widget.isSalon
            ? const SizedBox()
            : SizedBox(
                width: 180.w,
                child: CustomText(
                  title: widget.city,
                  textStyle: TextStyle(color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, fontSize: 16, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
                ),
              ),
        //************ Table Users Data Nation */
        // if (widget.isSalon) 15.horizontalSpace,
        // widget.isSalon
        //     ? const SizedBox()
        //     : SizedBox(
        //         width: 100.w,
        //         child: CustomText(
        //           title: widget.nation,
        //           textStyle: TextStyle(color: onHoverColor ? ColorManager.secondaryColor : ColorManager.black, fontSize: 16, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
        //         ),
        //       ),
        SizedBox(
          width: 150.w,
          child: returnValidation()
              ? const Icon(
                  Icons.check,
                  color: ColorManager.otherGreen0,
                )
              : const Icon(
                  Icons.close,
                  color: ColorManager.mainColor,
                ),
        ),
      ]),
    );
  }
}
