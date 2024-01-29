/*
 * "doodle_wear" created by @howyoujini on 1/27/24  11:41 PM
 * Copyright (c) . All rights reserved.
 */

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:doodle_wear/schemes/color_schemes.dart';
import 'package:doodle_wear/schemes/text_style.dart';

class AlarmSettingPage extends StatelessWidget {
  const AlarmSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "smart_watch",
                style: TILTextStyle.h2(),
              ),
            ),
            Text(
              "smart_watch_disc",
              style: TILTextStyle.h5r(context.color.tertiary),
            ),
            const Padding(padding: EdgeInsets.all(30)),
            Visibility(
              visible: Platform.isIOS,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "smart_watch_ios",
                    style: TILTextStyle.h4r(),
                  ),
                  Switch(value: true, onChanged: (bool value) {}),
                ],
              ),
            ),
            Visibility(
              visible: Platform.isAndroid,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "smart_watch_galaxy",
                    style: TILTextStyle.h4r(),
                  ),
                  Switch(value: true, onChanged: (bool value) {}),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
