/*
 * "doodle_wear" created by @howyoujini on 1/27/24  10:54 PM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';

@immutable
class TILTextStyle extends TextStyle {
  final Color? colorSystem;

  const TILTextStyle(this.colorSystem);

  // headline 1
  static TextStyle h1([final Color? color]) => TextStyle(
        // black
        fontWeight: FontWeight.w900,
        fontSize: 34,
        height: 0.85,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 2
  static TextStyle h2([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 22,
        height: 1.25,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 3
  static TextStyle h3b([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 18,
        height: 1.0,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h3m([final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.0,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h3r([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.0,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 4
  static TextStyle h4b([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 0.95,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h4m([final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 0.95,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h4r([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 0.95,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 5
  static TextStyle h5b([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 14,
        height: 1.09,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h5m([final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.09,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h5r([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.20,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 6
  static TextStyle h6b([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h6m([final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h6r([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 7
  static TextStyle h7b([final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.w700,
        fontSize: 12,
        height: 1.15,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h7m([final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.15,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h7r([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.15,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 8
  static TextStyle h8([final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 10,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );
}
