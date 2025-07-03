import 'package:flutter/material.dart';
import 'package:islamiapproute/ui/home/tabs/radio/radio_item.dart';
import 'package:islamiapproute/utils/app_colors.dart';

import '../../../../utils/app_styles.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.015,
        ),
        child: Column(
          children: [
            Container(
              height: height * 0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blackTransparentColor,
                borderRadius: BorderRadiusGeometry.circular(width * 0.03),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadiusGeometry.circular(
                          width * 0.03,
                        ),
                      ),
                      child: Text('Radio', style: AppStyles.bold14Black),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.blackTransparentColor,
                        borderRadius: BorderRadiusGeometry.circular(
                          width * 0.03,
                        ),
                      ),
                      child: Text('Reciters', style: AppStyles.bold14White),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => RadioItem(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: height*0.03,);
                  },
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
