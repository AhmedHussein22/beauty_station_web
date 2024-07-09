import 'package:beauty_station_web/data/local_storage/hive_storage.dart';
import 'package:beauty_station_web/resource/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<ChangeLocaleState> {
  LocaleCubit() : super(ChangeLocaleState(locale: const Locale('ar', '')));

  // Future<void> getSavedLanguage() async {
  //   final langCode = HiveStorage.get(HiveKeys.languageCode) ?? AppStrings.arabicCode;
  //   emit(ChangeLocaleState(locale: Locale(langCode)));
  // }

  // Future<void> changeLanguage(String languageCode) async {
  //   final currentLanguageCode = HiveStorage.get(HiveKeys.languageCode);
  //   if (currentLanguageCode == languageCode) {
  //     return;
  //   }
  //   await HiveStorage.set(HiveKeys.languageCode, languageCode);
  //   emit(ChangeLocaleState(locale: Locale(languageCode)));
  // }
}
