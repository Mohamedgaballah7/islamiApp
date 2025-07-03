import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_styles.dart';

import '../../../../utils/app_colors.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        image: DecorationImage(
            image: AssetImage(AppAssets.radioMosque),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter),
        borderRadius: BorderRadiusGeometry.circular(width * 0.04),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.01,
        ),
        child: Column(
          children: [
            Text('Radio Ibrahim Al-Akdar',style: AppStyles.bold20Black,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,color: AppColors.blackColor,size: 45,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_rounded,color: AppColors.blackColor,size: 40,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
