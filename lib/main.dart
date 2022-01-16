import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trends_app/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      child: HomeScreen(),

    supportedLocales: [Locale('en'), Locale('ar')],
    path: 'assets/lang', // <-- change the path of the translation files
    fallbackLocale: Locale('en'),

  ));
}
