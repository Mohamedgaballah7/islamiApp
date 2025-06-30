import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
class AppStyles{
  static TextStyle bold16White=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.whiteColor,);
  static TextStyle bold20Black=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.blackColor,);

  static TextStyle bold20White=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.whiteColor,);

  static TextStyle bold24Black=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.black,);

  static TextStyle bold16Black=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.blackColor,);

  static TextStyle bold14Black=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.blackColor,);

  static TextStyle bold20Primary=GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.primaryColor,);
}