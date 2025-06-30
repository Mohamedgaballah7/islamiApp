import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.blackColor,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: AppColors.primaryColor)
    ),
  );
 static final BoxDecoration selectedBox = BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: AppColors.primaryColor,
      width: 2,
    ),
  );
  static final BoxDecoration unselectedBox = BoxDecoration(
    color: AppColors.blackColor,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: AppColors.primaryColor,
      width: 2,
    ),
  );
}