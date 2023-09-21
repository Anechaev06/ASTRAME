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
    textTheme: GoogleFonts.montserratTextTheme(),
    appBarTheme: appBarTheme,
  );

  static const AppBarTheme appBarTheme = AppBarTheme(
    color: AppColors.bgColor,
    elevation: 0,
    centerTitle: true,
  );
}
