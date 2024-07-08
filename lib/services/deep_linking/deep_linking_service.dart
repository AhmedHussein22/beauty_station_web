// import 'package:rakeez/features/channel/presentation/controllers/follow_and_unfollow_channel_controller.dart';
// import 'package:rakeez/features/comments/presentation/controllers/all_comments_controller.dart';
// import 'package:rakeez/features/comments/presentation/controllers/comment_reacting_controller.dart';
// import 'package:rakeez/features/video_details/presentation/controllers/video_details_controller.dart';
// import 'package:rakeez/features/video_details/presentation/controllers/video_reacting_controller.dart';
// import 'package:rakeez/features/video_details/presentation/views/video_in_details_view.dart';
// import 'package:rakeez/services/google_analytics_service/google_analytics_service.dart';
// import 'package:app_links/app_links.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:share_plus/share_plus.dart';

// class DeepLinkingService {
//   //** */ On app link click***
//   void onAppLink() async {
//     final appLinks = AppLinks();
//     final Uri? uri = await appLinks.getInitialAppLink();
//     appLinks.allUriLinkStream.listen((uri) {
//       debugPrint("appLinks From allUriLinkStream =====================>: ${uri.toString()}");
//       _handelDeepLinkingNavigatio(uri);
//     });
//     debugPrint("appLinks=====================>: ${uri.toString()}");
//     if (uri != null) {
//       _handelDeepLinkingNavigatio(uri);
//     }
//   }

//   _handelDeepLinkingNavigatio(Uri uri) {
//     final String path = uri.path;
//     // if (path.contains("video")) {
//     Get.to(
//       () => VideoDetailsView(videoID: path.split("/").last),
//       binding: BindingsBuilder(() {
//         Get.put(VideoReactingController());
//         Get.put(FollowAndUnfollowChannelController());
//         Get.put(ViedoDetailsController());
//         Get.lazyPut(() => AllCommentsController());
//         Get.lazyPut(() => CommentReactingController());
//       }),
//     );
//     // }
//   }

//   //** */ share video with id ***
//   void shareVideo(String videoID) {
//     final String url = "https://api.anees.tv/$videoID";
//     debugPrint("shareVideo=====================>: $url");
//     AnalyticsService.logEvent(name: 'share_video', parameters: {'videoID': videoID});
//     AnalyticsService.logShare("share_video", videoID, 'DeepLinking');
//     Share.share(url);
//   }
// }
