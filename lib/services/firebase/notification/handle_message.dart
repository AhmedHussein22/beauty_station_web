// import 'package:rakeez/features/channel/presentation/controllers/follow_and_unfollow_channel_controller.dart';
// import 'package:rakeez/features/channel/presentation/controllers/get_channel_controller.dart';
// import 'package:rakeez/features/channel/presentation/views/channel_details_view.dart';
// import 'package:rakeez/features/comments/presentation/controllers/all_comments_controller.dart';
// import 'package:rakeez/features/comments/presentation/controllers/comment_reacting_controller.dart';
// import 'package:rakeez/features/notifications/presentation/views/notifications_view.dart';
// import 'package:rakeez/features/terms/presentation/views/terms_view.dart';
// import 'package:rakeez/features/video_details/presentation/controllers/video_details_controller.dart';
// import 'package:rakeez/features/video_details/presentation/controllers/video_reacting_controller.dart';
// import 'package:rakeez/features/video_details/presentation/views/video_in_details_view.dart';
// import 'package:rakeez/utils/app_utils/helpers_functions.dart';
// import 'package:get/get.dart';

void handleMessage({required String type, String? id}) {
//   //types general, privacy_update ,new_video, channel ,app_update
//   // *************** if type is video **************** */
//   if (type == 'new_video') {
//     if (id != null) {
//       Get.to(
//         () => VideoDetailsView(videoID: id),
//         binding: BindingsBuilder(() {
//           Get.put(VideoReactingController());
//           Get.put(FollowAndUnfollowChannelController());
//           Get.put(ViedoDetailsController());
//           Get.lazyPut(() => AllCommentsController());
//           Get.lazyPut(() => CommentReactingController());
//         }),
//       );
//     }
//   }
//   // *************** if type is channel **************** */
//   else if (type == 'channel') {
//     if (id != null) {
//       Get.to(
//         () => ChanneDetailsView(userId: id),
//         binding: BindingsBuilder(() {
//           Get.put(FollowAndUnfollowChannelController());
//           Get.put(GetChannelDataController());
//         }),
//       );
//     }
//   }
//   // *************** if type is app_update **************** */
//   else if (type == 'app_update') {
//     if (GetPlatform.isAndroid) {
//       HelperFunctions.launchURL('https://play.google.com/store/apps/details?id=com.anees.app');
//     } else {
//       HelperFunctions.launchURL('https://apps.apple.com/us/app/anees/id1580228879');
//     }
//   }
//   // *************** if type is privacy_update **************** */
//   else if (type == 'privacy_update') {
//     Get.to(() => const TremsView());
//   }
//   // *************** if type is general **************** */
//   else {
//     Get.to(() => const NotificationsView());
//   }
 }
