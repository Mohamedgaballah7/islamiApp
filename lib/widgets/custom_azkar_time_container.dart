import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';

class CustomAzkarContainer extends StatelessWidget {
  const CustomAzkarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      width: width * 0.25,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
          width: width * 0.005,
        ),
        borderRadius: BorderRadius.circular(width * 0.08),
        color: AppColors.blackColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.eveningAzkarImage),
          Text('Evening Azkar', style: AppStyles.bold20White,),
        ],
      ),
    );
  }
}
