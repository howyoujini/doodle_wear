/*
 * "doodle_wear" created by @howyoujini on 1/28/24  1:31 AM
 * Copyright (c) . All rights reserved.
 */

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:doodle_wear/screen/letter/snow_ground/snow.dart';

class SnowGroundPainter extends CustomPainter {
  SnowGroundPainter({
    required this.snow,
    required this.showHeatmap,
    required this.pointMode,
  });

  final Snow snow;
  final bool showHeatmap;
  final PointMode pointMode;

  @override
  void paint(Canvas canvas, Size size) => snow.draw(
        canvas: canvas,
        paint: Paint()
          ..color = Colors.black
          ..strokeWidth = 1,
        showHeatmap: showHeatmap,
        pointMode: pointMode,
      );

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
