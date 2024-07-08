// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';

// class AnalyticsService {
//   // Singleton instance
//   static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

//   static Future<void> logEvent({required String name, Map<String, dynamic>? parameters}) async {
//     try {
//       await _analytics.logEvent(name: name, parameters: parameters);
//       debugPrint('Event logged==========================>: $name');
//     } catch (e) {
//       debugPrint('Error in logEvent======================>: $e');
//       rethrow;
//     }
//   }

//   static Future<void> setUserProperties({required String id, String? name, String? type}) async {
//     await _analytics.setUserId(id: id);
//     await _analytics.setUserProperty(name: 'name', value: name);
//     await _analytics.setUserProperty(name: 'type', value: type);
//   }

//   static Future<void> logScreenView() async {
//         debugPrint('logScreenView======================>: ${Get.currentRoute}');

//     await _analytics.logScreenView(screenName: Get.currentRoute);
//   }

//   static Future<void> logAppOpen() async {
//     await _analytics.logAppOpen();
//   }

//   static Future<void> logAddToWishlist(int videoID) async {
//     await _analytics.logAddToWishlist(parameters: {'videoID': videoID});
//   }

//   //******** logSearch ***********  */
//   static Future<void> logSearch(String searchTerm) async {
//     await _analytics.logSearch(searchTerm: searchTerm);
//   }

//   //******** logShare ***********  */
//   static Future<void> logShare(String contentType, String itemId, String method) async {
//     await _analytics.logShare(contentType: contentType, itemId: itemId, method: method);
//   }

//   //******** logSignUp ***********  */
//   static Future<void> logSignUp(String signUpMethod) async {
//     await _analytics.logSignUp(signUpMethod: signUpMethod);
//   }
// }
