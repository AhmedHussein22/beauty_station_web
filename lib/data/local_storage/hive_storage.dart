// import 'package:hive_flutter/adapters.dart';

// class HiveKeys {
//   static const String firstTime = 'first_Time';
//   static const String languageCode = 'language_code';
//   static const String themeCode = 'theme_code';
//   static const String apiTokenKey = 'apiToken';

//   static const String isDark = 'isDark';

//   static const String firebaseToken = 'firebaseToken';

//   static const String displayName = 'displayName';
//   static const String email = 'email';
//   static const String phoneNumber = 'phoneNumber';
//   static const String profileImage = 'profileImage';
// }

// class HiveStorage {
//   static late Box box;

//   static Future<void> init() async {
//     await Hive.initFlutter();
//     box = await Hive.openBox('myBox');
//   }

//   static dynamic get(String key) {
//     try {
//       return box.get(key, defaultValue: null);
//     } catch (e) {
//       return null;
//     }
//   }

//   static Future<void> set(String key, dynamic value) async {
//     box.put(key, value);
//   }

//   static Future<void> remove(String key) async {
//     box.delete(key);
//   }

//   static Future<void> clear() async {
//     box.clear();
//   }
// }
