import 'package:flutter/material.dart';
import 'package:islamiapproute/providers/most_recently_provider.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_resources.dart';
import 'package:provider/provider.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class MostRecentlyWidget extends StatefulWidget {
  MostRecentlyWidget({super.key});

  @override
  State<MostRecentlyWidget> createState() => _MostRecentlyWidgetState();
}

class _MostRecentlyWidgetState extends State<MostRecentlyWidget> {
  late MostRecentlyProvider mostRecentlyProvider;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostRecentlyProvider.getNewMostRecentlySuraList();
    });
  }

  @override
  Widget build(BuildContext context) {
    mostRecentlyProvider = Provider.of<MostRecentlyProvider>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Visibility(
      visible: mostRecentlyProvider.mostRecentlyList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Most Recently', style: AppStyles.bold16White),
          SizedBox(height: height * 0.01),
          SizedBox(
            height: height * 0.18,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            QuranResources
                                .englishQuranSurasList[mostRecentlyProvider
                                .mostRecentlyList[index]],
                            style: AppStyles.bold20Black.copyWith(fontSize: 20),
                          ),
                          Text(
                            QuranResources
                                .arabicQuranSurasList[mostRecentlyProvider
                                .mostRecentlyList[index]],
                            style: AppStyles.bold20Black.copyWith(fontSize: 20),
                          ),
                          Text(
                            '${QuranResources.verseNumberList[mostRecentlyProvider.mostRecentlyList[index]]} Verses',
                            style: AppStyles.bold14Black,
                          ),
                        ],
                      ),
                      Image.asset(AppAssets.mostRecently),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: width * 0.02);
              },
              itemCount: mostRecentlyProvider.mostRecentlyList.length,
            ),
          ),
          SizedBox(height: height * 0.01),
        ],
      ),
    );
  }
}
