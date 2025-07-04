import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details/sura_content_item.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details2/sura_details2.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_resources.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/most_recently_provider.dart';
import '../../../../../utils/app_styles.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({super.key});
   static const String routeName='sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  late MostRecentlyProvider mostRecentlyProvider;
  List<String>verses=[];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mostRecentlyProvider.getNewMostRecentlySuraList();
  }
  @override
  Widget build(BuildContext context) {
    mostRecentlyProvider = Provider.of<MostRecentlyProvider>(context);
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    int index=ModalRoute.of(context)?.settings.arguments as int;
    if(verses.isEmpty)
      {
        loadFileSura(index);
      }
     return Scaffold(
      appBar: AppBar(
        title: Text(QuranResources.englishQuranSurasList[index],
          style: AppStyles.bold20Primary,),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed(SuraDetailsScreen2.routeName,
          arguments: index);
        },
            icon: Icon(Icons.switch_left_sharp))],
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
                child: verses.isEmpty?
              Center(
                  child: CircularProgressIndicator(color: AppColors.primaryColor,))
                  :ListView.separated(
                itemBuilder: (context, index) {
                  return SuraContentItem(suraContent: verses[index],index: index,);
                },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: height*0.01,);
                  },
                itemCount: verses.length,
              ),),
              Image.asset(AppAssets.quranCornerBottomBG),
          ],),
        ),
      ),
    );
  }

  void loadFileSura(int index)async{
    String fileContent=await rootBundle.loadString('assets/files/quran/${index+1}.txt');
    List<String>lines=fileContent.split('\n');

    verses=lines;
    Future.delayed(Duration(seconds: 1),() => setState(() {

    }));

  }
}
/**/