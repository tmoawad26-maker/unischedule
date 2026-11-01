import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String defaultLocale = 'ar';
  void toggleLanguage(BuildContext context,Locale locale) {
    defaultLocale = defaultLocale == context.locale.countryCode ? 'en' : 'ar';
    notifyListeners();
  }
}
