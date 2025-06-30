import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details/sura_content_item.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details2/sura_content_item2.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_resources.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';

import '../../../../../utils/app_styles.dart';

class SuraDetailsScreen2 extends StatefulWidget {
  SuraDetailsScreen2({super.key});
   static const String routeName='sura_details2';

  @override
  State<SuraDetailsScreen2> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen2> {
  String suraContent='';

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    int index=ModalRoute.of(context)?.settings.arguments as int;
    if(suraContent.isEmpty)
      {
        loadFileSura(index);
      }
    loadFileSura(index);
     return Scaffold(
      appBar: AppBar(
        title: Text(QuranResources.englishQuranSurasList[index],
          style: AppStyles.bold20Primary,),
      ),
      body:Container(
        color: AppColors.blackColor,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.02),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.quranCornerLeftBG),
                Text(QuranResources.arabicQuranSurasList[index],style: AppStyles.bold20Primary,),
                Image.asset(AppAssets.quranCornerRightBG),
            ],),
              SizedBox(height: height*0.02,),
              Expanded(
                child: suraContent.isEmpty?
              Center(
                  child: CircularProgressIndicator(color: AppColors.primaryColor,))
                  :SuraContentItem2(suraContent:suraContent),
              ),
              Image.asset(AppAssets.quranCornerBottomBG),
          ],),
        ),
      ),
    );
  }

  void loadFileSura(int index)async{
    String fileContent=await rootBundle.loadString('assets/files/quran/${index+1}.txt');
    List<String>lines=fileContent.split('\n');
    for(int i=0;i<lines.length;i++){
      lines[i]+='[${i+1}] ';
    }
    suraContent=lines.join();
    Future.delayed(Duration(seconds: 1),() => setState(() {

    }));

  }
}