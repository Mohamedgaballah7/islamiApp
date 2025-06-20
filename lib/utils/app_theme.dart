import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
    )
  );
}