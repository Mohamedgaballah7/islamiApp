
import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';

class SuraContentItem extends StatelessWidget {
  String suraContent;
  int index;
   SuraContentItem({super.key,required this.suraContent,required this.index});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;

    return Container(

      padding: EdgeInsets.symmetric(vertical: height*0.02),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: AppColors.primaryColor,
          width: 2,
        ),
      ),
      child: Text('$suraContent [${index+1}]',
      textDirection: TextDirection.rtl,
      style: AppStyles.bold20Primary,),
    );
  }
}
