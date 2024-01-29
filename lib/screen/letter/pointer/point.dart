/*
 * "doodle_wear" created by @howyoujini on 1/28/24  1:47 AM
 * Copyright (c) . All rights reserved.
 */
import 'dart:ui';

import 'package:doodle_wear/screen/letter/pointer/constrait.dart';
import 'package:doodle_wear/screen/letter/pointer/pointer.dart';
import 'package:doodle_wear/screen/letter/setting.dart';

class SnowPoint {
  SnowPoint(this.position, this.pointer) {
    pointerPosition = position;
  }

  final FingerPointer pointer;

  Offset position;

  Offset pointerPosition = Offset.zero;
  Offset velocity = Offset.zero;
  Offset? pinPosition;

  List<Constraint> constraints = <Constraint>[];

  void update(double delta) {
    if (pointer.pressed) {
      final Offset difference = position - pointer.position;
      final double distance = difference.distance;

      if (pointer.isActionPressed) {
        if (distance < pointerInfluence) {
          pointerPosition = position - (pointer.position - pointer.prevPosition);
        }
      } else if (distance < pointerCut) {
        constraints.clear();
      }
    }

    addForce(const Offset(0, gravity));

    Offset nextPosition =
        position + ((position - pointerPosition) * friction) + (velocity * 0.5 * delta * delta);

    pointerPosition = position;
    position = nextPosition;

    velocity = Offset.zero;
  }

  void draw(Canvas canvas, Paint paint, PointMode pointMode) {
    if (constraints.isEmpty) {
      return;
    }

    for (int i = 0; i < constraints.length; i++) {
      constraints[i].draw(canvas, paint, pointMode);
    }
  }

  void resolveConstraints() {
    if (pinPosition != null) {
      position = pinPosition!;

      return;
    }

    int i = constraints.length;

    while (i-- > 0) {
      constraints[i].resolve();
    }

    double x = position.dx;
    double y = position.dy;

    if (x > canvasWidth - 1) {
      x = 2 * (canvasWidth - 1) - x;
    } else if (x < 1) {
      x = 2 - x;
    }

    if (y < 1) {
      y = 2 - y;
    } else if (y > canvasHeight - 1) {
      y = 2 * (canvasHeight - 1) - y;
    }

    position = Offset(x, y);
  }

  void attach(SnowPoint point) => constraints.add(Constraint(this, point));

  void removeConstraint(Constraint constraint) {
    final int index = constraints.indexOf(constraint);

    constraints.removeAt(index);
  }

  void addForce(Offset force) => velocity += force;
}
