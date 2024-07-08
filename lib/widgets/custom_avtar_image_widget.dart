import 'package:beauty_station_web/resource/assets_manager.dart';
import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/widgets/custom_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomAvtarImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double radius;
  final bool imageAsset;
  final bool withDefualtImageAsset;
  final Color? backgroundColor;
  final Widget? child;
  final BlendMode? blendMode;
  final String? imageAssetPath;

  const CustomAvtarImageWidget({
    super.key,
    this.imageUrl,
    this.imageAsset = false,
    this.withDefualtImageAsset = true,
    this.blendMode,
    required this.radius,
    this.backgroundColor,
    this.child,
    this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return imageAsset
        ? CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor ?? ColorManager.offWhite,
            backgroundImage: withDefualtImageAsset ? AssetImage(imageAssetPath ?? ImageAssets.defualtAvtar) : null,
            child: child,
          )
        : CachedNetworkImage(
            imageUrl: '$imageUrl',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            imageBuilder: (context, imageProvider) => CircleAvatar(
              radius: radius,
              backgroundColor: backgroundColor ?? ColorManager.mainColor,
              backgroundImage: imageProvider,
              child: child,
            ),
            colorBlendMode: blendMode,
            placeholder: (context, url) => CircleAvatar(
              maxRadius: radius * 2,
              minRadius: radius,
              child: CustomLoadingWidget(
                width: radius * 2,
                height: radius * 2 ,
              ),
            ),
            errorWidget: (context, url, error) => CircleAvatar(
              radius: radius,
              backgroundColor: backgroundColor ?? ColorManager.mainColor,
              // backgroundImage: const AssetImage(ImageAssets.defualtAvtarImg),
              child: child,
            ),
          );
  }
}
