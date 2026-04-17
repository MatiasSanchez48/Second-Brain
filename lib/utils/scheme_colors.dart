import 'package:flutter/material.dart';

const colorsSchemeLight = ColorScheme(
  brightness: Brightness.light,

  // Primary - el violeta principal
  primary: Color(0xFF7D6FA3),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE8E0F0),
  onPrimaryContainer: Color(0xFF2D1F4E),

  // Secondary - el gris violáceo
  secondary: Color(0xFF7B748A),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE8E0F0),
  onSecondaryContainer: Color(0xFF2D1F4E),

  // Tertiary - el rosado/mauve
  tertiary: Color(0xFF956989),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFD8F4),
  onTertiaryContainer: Color(0xFF3E0035),

  // Neutral - los grises
  surface: Color(0xFFF5F0FA),
  onSurface: Color(0xFF79767B),
  surfaceContainerHighest: Color(0xFFE8E0F0),
  onSurfaceVariant: Color(0xFF79767B),

  // Otros requeridos
  error: Color(0xFFB3261E),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFF9DEDC),
  onErrorContainer: Color(0xFF410E0B),
  outline: Color(0xFF79767B),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFF2D1F4E),
  onInverseSurface: Color(0xFFF5F0FA),
  inversePrimary: Color(0xFFD0BCFF),
  scrim: Color(0xFF000000),
);

const colorsSchemeDark = ColorScheme(
  brightness: Brightness.dark,

  // Primary - violeta más suave para dark
  primary: Color(0xFFD0BCFF),
  onPrimary: Color(0xFF381E72),
  primaryContainer: Color(0xFF4F378B),
  onPrimaryContainer: Color(0xFFEADDFF),

  // Secondary
  secondary: Color(0xFFCBC2DB),
  onSecondary: Color(0xFF332D41),
  secondaryContainer: Color(0xFF4A4458),
  onSecondaryContainer: Color(0xFFE8DEF8),

  // Tertiary
  tertiary: Color(0xFFEFB8C8),
  onTertiary: Color(0xFF492532),
  tertiaryContainer: Color(0xFF633B48),
  onTertiaryContainer: Color(0xFFFFD8E4),

  // Neutral - fondos oscuros
  surface: Color(0xFF1C1B1F),
  onSurface: Color(0xFFE6E1E5),
  surfaceContainerHighest: Color(0xFF2D2D35),
  onSurfaceVariant: Color(0xFFCAC4D0),

  // Otros requeridos
  error: Color(0xFFF2B8B5),
  onError: Color(0xFF601410),
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFF9DEDC),
  outline: Color(0xFF938F99),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFFE6E1E5),
  onInverseSurface: Color(0xFF313033),
  inversePrimary: Color(0xFF6750A4),
  scrim: Color(0xFF000000),
);
