import 'package:flutter/material.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_resources.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_styles.dart';

class QuranItems extends StatelessWidget {
  int index;
  QuranItems({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children:[
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppAssets.SuraVectorNo),
              Text('${index+1}',style: AppStyles.bold16White,)
            ],
          ),
          SizedBox(width: width*0.02,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${QuranResources.englishQuranSurasList[index]}',
                style: AppStyles.bold20White.copyWith(fontSize: 20),),
              Text('${QuranResources.verseNumberList[index]} Verses',
                style: AppStyles.bold16White,),
            ],
          ),
          Spacer(),
          Text('${QuranResources.arabicQuranSurasList[index]}',
            style: AppStyles.bold20White.copyWith(fontSize: 20),),
        ],
      ),
    );
  }
}
