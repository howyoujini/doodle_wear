/*
 * "doodle_wear" created by @howyoujini on 1/27/24  11:32 PM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';

class DoodleWearScaffold extends StatefulWidget {
  final String location;
  final Widget child;
  final bool? isScrollingBottomBar;

  const DoodleWearScaffold(
      {super.key, this.isScrollingBottomBar, required this.child, required this.location});

  @override
  State<DoodleWearScaffold> createState() => _DoodleWearScaffoldState();
}

class _DoodleWearScaffoldState extends State<DoodleWearScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // flutter 에서 키보드가 올라왔을 때, bottom resize를 방어하기 위한 속성
      resizeToAvoidBottomInset: false,
      body: widget.child,
    );
  }
}
