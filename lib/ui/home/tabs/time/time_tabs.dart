
import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';
import 'package:islamiapproute/widgets/custom_azkar_time_container.dart';
import 'package:islamiapproute/widgets/custom_pray_time_container.dart';

class TimeTab extends StatelessWidget{
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(AppAssets.prayTimeBg),
              Image.asset(AppAssets.prayTimeImage),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                      vertical: height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('16 jui,', style: AppStyles.bold14White),
                            Text('2025', style: AppStyles.bold14White),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Pray Time',
                              style: AppStyles.bold16White.copyWith(
                                color: Color(0xff707070),
                              ),
                            ),
                            Text('Friday', style: AppStyles.bold14Black),
                          ],
                        ),
                        Column(
                          children: [
                            Text('09 Muh,', style: AppStyles.bold14White),
                            Text('1447', style: AppStyles.bold14White),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.01,
                      vertical: height * 0.015,
                    ),
                    child: SizedBox(
                      height: height * 0.15,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CustomPrayContainer();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: width * 0.02);
                        },
                        itemCount: 20,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next Pray-02:33', style: AppStyles.bold14Black),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Text('Azkar', style: AppStyles.bold20Primary),
          Expanded(
            child: SizedBox(
              width: double.infinity,

              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return CustomAzkarContainer();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }


}