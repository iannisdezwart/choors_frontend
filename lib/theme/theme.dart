import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.light,
    background: Colors.white,
  ),
  useMaterial3: true,
  textTheme: TextTheme(
    titleLarge: GoogleFonts.workSans(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.workSans(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: GoogleFonts.workSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: GoogleFonts.workSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.workSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.workSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  ),
);
