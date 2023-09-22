import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static final ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.bgColor,
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
      background: AppColors.bgColor,
    ),
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
      headlineLarge: const TextStyle(
        fontSize: 36.0,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle(
        fontSize: 32.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: const TextStyle(
        fontSize: 16.0,
        color: AppColors.greyColor,
      ),
      bodyMedium: const TextStyle(
        fontSize: 14,
        color: AppColors.greyColor,
      ),
    ),
  );
}
