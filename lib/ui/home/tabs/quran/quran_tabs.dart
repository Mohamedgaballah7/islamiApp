import 'package:flutter/material.dart';
import 'package:islamiapproute/ui/home/tabs/quran/most_recently.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_items.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_resources.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';
import 'package:islamiapproute/utils/shared_preference.dart';

import 'details/sura_details.dart';

class QuranTab extends StatefulWidget{

   QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> filterList=List.generate(114, (index) => index,);

  @override

  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: AppStyles.bold16White,
            cursorColor: AppColors.primaryColor,
            onChanged: (newText){
              searchByNewText(newText);
            },
            decoration: InputDecoration(
              hintText: 'Sura Name',
                hintStyle: AppStyles.bold16White,
                prefixIcon: ImageIcon(AssetImage(AppAssets.quranTextFieldIcon),
                  color:AppColors.primaryColor ,),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(color: AppColors.primaryColor,
                    width: 2)
            ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(color: AppColors.primaryColor,
                      width: 2)
              ),
            ),
          ),
          SizedBox(height: height*0.02,),
          MostRecentlyWidget(),
          Text('Suras List',style: AppStyles.bold16White,),
          SizedBox(height: height*0.01,),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return InkWell(
                          onTap: (){
                            setNewMostRecentlySuraList(filterList[index]);
                            Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                                arguments: filterList[index]);
                          },
                      child: QuranItems(index:filterList[index] ,));
                },
                separatorBuilder: (context, index) {
                  return Divider(color: AppColors.whiteColor,
                    thickness: 2,
                    indent: width*0.05,
                    endIndent: width*0.05,);
                },
                itemCount: filterList.length),
          ),
        ],
      ),
    );
  }

void searchByNewText(String newText) {
    List<int>filterListSearch=[];
    for(int i=0;i<QuranResources.englishQuranSurasList.length;i++){
      if(QuranResources.englishQuranSurasList[i].toLowerCase().contains(newText.toLowerCase())){
        filterListSearch.add(i);
      }
      else if(QuranResources.arabicQuranSurasList[i].contains(newText)){
        filterListSearch.add(i);
      }
      filterList=filterListSearch;
      setState(() {

      });
    }
}
}