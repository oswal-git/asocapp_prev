import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationChecker {
  static changeLanguge(BuildContext context) {
    Locale? currentLocal = EasyLocalization.of(context)!.currentLocale;
    if (currentLocal == const Locale('en', 'GB')) {
      EasyLocalization.of(context)!.setLocale(const Locale('es', 'ES'));
    } else {
      EasyLocalization.of(context)!.setLocale(const Locale('en', 'GB'));
    }
  }
}
