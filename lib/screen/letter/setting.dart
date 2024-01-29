/*
 * "doodle_wear" created by @howyoujini on 1/28/24  2:11 AM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';

const double canvasWidth = 800;
const double canvasHeight = 1200;
const double snowWidth = 200;
const double snowHeight = 120;

/// 중력
const double gravity = 10;

/// 물리 정확도
const int physicsAccuracy = 3;

/// 마칠력: 클수록 입자들이 더 잘 날라간다.
const double friction = 1;

/// 파티클들의 간격
const double spacing = 3;

/// 입자들이 서로 찢겨져거 날라가는 거리
const double tearDistance = 7;

/// 파티클들의 그룹이 화면 내에 보여지기 시작하는 시작 지점
const Offset start = Offset(canvasWidth * 0.5 - (snowWidth * spacing) * 0.5, 20);

/// 손가락 굵기
const double pointerInfluence = 5;

/// 손가락 지점으로부터 끊기는 범위
const double pointerCut = 15;
