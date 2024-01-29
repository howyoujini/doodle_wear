/*
 * "doodle_wear" created by @howyoujini on 1/28/24  12:45 AM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';

class FingerPointer {
  bool pressed = false;
  bool isActionPressed = false;

  Offset position = Offset.zero;
  Offset prevPosition = Offset.zero;
}
