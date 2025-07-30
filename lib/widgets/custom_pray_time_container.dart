import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';

class CustomPrayContainer extends StatelessWidget {
  const CustomPrayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      width: width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.08),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.blackColor,
              AppColors.grayColor
            ]
        ),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ASR', style: AppStyles.bold16White,),
          Text('04:45', style: AppStyles.bold16White,),
          Text('Pm', style: AppStyles.bold16White,),
        ],
      ),
    );
  }
}
