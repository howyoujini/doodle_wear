/*
 * "doodle_wear" created by @howyoujini on 1/27/24  11:30 PM
 * Copyright (c) . All rights reserved.
 */

import 'dart:async';
import 'dart:ui';

import 'package:doodle_wear/screen/letter/setting.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:doodle_wear/screen/letter/pointer/pointer.dart';
import 'package:doodle_wear/screen/letter/snow_ground/snow.dart';
import 'package:doodle_wear/screen/letter/snow_ground/snow_ground_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FingerPointer pointer = FingerPointer();

  late final Snow snow;

  @override
  void initState() {
    super.initState();

    snow = Snow(pointer);

    Timer.periodic(
      const Duration(milliseconds: 16),
      (Timer timer) => setState(() => snow.update()),
    );
  }

  void _handlePointerDown(final PointerDownEvent event) {
    pointer.pressed = true;
    pointer.isActionPressed = event.buttons == kPrimaryMouseButton;
  }

  void _handlePointerUp(final PointerUpEvent event) {
    pointer.pressed = false;
    pointer.isActionPressed = false;
  }

  void _updateLocation(final PointerMoveEvent event) {
    pointer.prevPosition = pointer.position;
    pointer.position = event.localPosition;
  }

  void _handlePointerHover(PointerHoverEvent event) {
    pointer.prevPosition = pointer.position;
    pointer.position = event.localPosition;
  }

  @override
  Widget build(final BuildContext context) {
    return Listener(
      onPointerDown: _handlePointerDown,
      onPointerUp: _handlePointerUp,
      onPointerMove: _updateLocation,
      onPointerHover: _handlePointerHover,
      child: CustomPaint(
        size: const Size(canvasWidth, canvasHeight),
        painter: SnowGroundPainter(
          snow: snow,
          showHeatmap: true,
          pointMode: PointMode.points,
        ),
      ),
    );
  }
}
