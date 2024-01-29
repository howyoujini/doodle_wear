/*
 * "doodle_wear" created by @howyoujini on 1/27/24  10:54 PM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:doodle_wear/schemes/color_schemes.dart';
import 'package:doodle_wear/schemes/text_style.dart';
import 'package:doodle_wear/screen/letter/home.dart';
import 'package:doodle_wear/screen/setting/alarm/alarm.dart';
import 'package:doodle_wear/screen/setting/setting.dart';
import 'package:doodle_wear/doodle_scaffold.dart';

part 'router.dart';

class DoodleWearApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();
  static const String appPackageName = "Doodle Wear";
  static const String appFontFamily = "Pretendard";

  const DoodleWearApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: appPackageName,
      routerConfig: DoodleWearRoute._router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: DoodleWearApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: DoodleWearApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      themeMode: ThemeMode.system,
    );
  }
}
