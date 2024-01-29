/*
 * "doodle_wear" created by @howyoujini on 1/27/24  10:52 PM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';

extension ColorSchemeOnContextExtension on BuildContext {
  ColorScheme get color => Theme.of(this).colorScheme;
}

abstract class TILPointColor {
  static const Color blue = Color(0xFF4D93F0);
  static const Color orange = Color(0xFFE99344);
  static const Color green = Color(0xFFACF557);
  static const Color yellow = Color(0xFFF6F45B);
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFFFCA11),
  onPrimary: Color(0xFFECECEC),
  primaryContainer: Color(0x1AFFD7D9),
  onPrimaryContainer: Color(0xFF321300),
  secondary: Color(0xFFD1FF9B),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFE08A),
  onSecondaryContainer: Color(0xFFF1B81E),
  tertiary: Color(0xCC8D8D8D),
  onTertiary: Color(0xB3DCDCDC),
  tertiaryContainer: Color(0x1AACACAC),
  onTertiaryContainer: Color(0xFF271900),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFACF557),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFFFF),
  onBackground: Color(0xFF000000),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF181818),
  surfaceVariant: Color(0xCCBBBBBB),
  onSurfaceVariant: Color(0xFFA8A8A8),
  outline: Color(0xFFEFEFEF),
  onInverseSurface: Color(0xFFE5E5E5),
  inverseSurface: Color(0xFF00363D),
  inversePrimary: Color(0xFF2196F3),
  shadow: Color(0x1A000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFFD43),
  onPrimary: Color(0xFF2A2A2A),
  primaryContainer: Color(0xFF2B2B2B),
  onPrimaryContainer: Color(0xFFFFDBC8),
  secondary: Color(0xFFACF557),
  onSecondary: Color(0xFF2D2D2D),
  secondaryContainer: Color(0xFFF1B81E),
  onSecondaryContainer: Color(0xFFFFE08A),
  tertiary: Color(0xCC8D8D8D),
  onTertiary: Color(0xB3DCDCDC),
  tertiaryContainer: Color(0x1AA0A0A0),
  onTertiaryContainer: Color(0xFFFFDEAA),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF000000),
  onBackground: Color(0xFFFFFFFF),
  surface: Color(0xFF000000),
  onSurface: Color(0xF3F3F3F3),
  surfaceVariant: Color(0xCC4C4C4C),
  onSurfaceVariant: Color(0xFF8D8D8D),
  outline: Color(0xFF1C1C1C),
  onInverseSurface: Color(0xFF181818),
  inverseSurface: Color(0xFFE5E5E5),
  inversePrimary: Color(0xFF1B7AC2),
  shadow: Color(0x66000000),
);
