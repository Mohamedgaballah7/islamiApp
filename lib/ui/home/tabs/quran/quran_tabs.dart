import 'package:flutter/material.dart';
import 'package:islamiapproute/ui/home/tabs/quran/quran_items.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';

import 'details/sura_details.dart';

class QuranTab extends StatelessWidget{
  const QuranTab({super.key});

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
            cursorColor: AppColors.primaryColor,
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
          Text('Most Recently',style: AppStyles.bold16White,),
          SizedBox(height: height*0.01,),
          SizedBox(
            height: height*0.18,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(14),
               decoration: BoxDecoration(
                 color: AppColors.primaryColor,
                 borderRadius: BorderRadius.circular(18)
               ),
                child: Row(
                  children:[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Al-Anbiya',style: AppStyles.bold14Black.copyWith(fontSize: 20),),
                      Text('الأنبياء',style: AppStyles.bold14Black.copyWith(fontSize: 20),),
                      Text('112 Verses',style: AppStyles.bold14Black,),
                    ],
                    ),
                    Image.asset(AppAssets.mostRecently),
                  ],
                ),
              );
            },
                separatorBuilder: (context, index) {
                  return SizedBox(width: width*0.02,);
                },
                itemCount: 5),
          ),
          SizedBox(height: height*0.01,),
          Text('Suras List',style: AppStyles.bold16White,),
          SizedBox(height: height*0.01,),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                                arguments: index);
                          },
                      child: QuranItems(index:index ,));
                },
                separatorBuilder: (context, index) {
                  return Divider(color: AppColors.whiteColor,
                    thickness: 2,
                    indent: width*0.05,
                    endIndent: width*0.05,);
                },
                itemCount: 114),
          ),
        ],
      ),
    );
  }


}