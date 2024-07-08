import 'package:beauty_station_web/resource/assets_manager.dart';
import 'package:beauty_station_web/widgets/custom_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageWidget extends StatelessWidget {
  final String imageUrl;
  final String? assetImagePath;
  final BoxFit boxFit;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isImageAsset;
  final Color? color;
  final BlendMode? blendMode;
  final BorderRadiusDirectional? customBorderRadius;

  const CustomImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadius,
    this.isImageAsset = false,
    this.boxFit = BoxFit.cover,
    this.color,
    this.blendMode,
    this.assetImagePath,
    this.customBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: customBorderRadius ?? BorderRadius.circular(borderRadius ?? 10.r),
      child: isImageAsset
          ? Image.asset(
              assetImagePath ?? ImageAssets.defualtAvtar,
              width: width ?? 1.sw * .35,
              height: height ?? 1.sh * .15,
              color: color,
              colorBlendMode: blendMode,
              fit: boxFit,
            )
          : CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              alignment: Alignment.topCenter,
              width: width ?? 1.sw * .35,
              height: height ?? 1.sh * .15,
              color: color,
              colorBlendMode: blendMode,
              placeholder: (context, url) => CustomLoadingWidget(
                width: width ?? 1.sw * .35,
                height: height ?? 1.sh * .15,
              ),
              errorWidget: (context, url, error) => Image.asset(
                ImageAssets.defualtAvtar,
                width: width ?? 1.sw * .35,
                height: height ?? 1.sh * .15,
                color: color,
                colorBlendMode: blendMode,
                fit: boxFit,
              ),
            ),
    );
  }
}
