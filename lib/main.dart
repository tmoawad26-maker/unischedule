import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/unishedule_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'),Locale('ar')],
      path: 'assets/lang',
      fallbackLocale: Locale('ar'),
    child: const UnischeduleApp()
    ));
}
