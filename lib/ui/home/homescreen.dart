
import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_assets.dart';
import 'package:islamiapproute/utils/app_colors.dart';
class HomeScreen extends StatefulWidget
{
  static const String routeName='home';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<String>ImagesBackground=[
    AppAssets.QuranBg,
    AppAssets.hadethBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.timeBg];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImagesBackground[selectedIndex],width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
                 onTap: (index){
                selectedIndex=index;
                setState(() {

                });
                 },
                items: [
                  BottomNavigationBarItem(icon:
                  BuildBottomNavigationBar(index: 0, imagePath: AppAssets.iconQuran),
                  label: 'Quran'),
                  BottomNavigationBarItem(icon:
                  BuildBottomNavigationBar(index: 1, imagePath: AppAssets.iconhadeth),
                      label: 'Hadeth'),
                  BottomNavigationBarItem(icon:
                  BuildBottomNavigationBar(index: 2, imagePath: AppAssets.iconSebha),
                      label: 'Sebha'),
                  BottomNavigationBarItem(icon:
                  BuildBottomNavigationBar(index: 3, imagePath: AppAssets.iconRadio),
                      label: 'Radio'),
                  BottomNavigationBarItem(icon:
                  BuildBottomNavigationBar(index: 4, imagePath: AppAssets.iconTime),
                      label: 'Time')
                ]),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.islamiLogo),
            ],
          ),
        )
      ],
    );
  }

  Widget BuildBottomNavigationBar({required int index,required String imagePath})
  {
    return selectedIndex==index
        ? Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
        decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(66),
            color: AppColors.grayColor),
        child: ImageIcon(AssetImage(imagePath)))
        :ImageIcon(AssetImage(imagePath));
  }
}