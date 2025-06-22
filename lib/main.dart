
import 'package:flutter/material.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details/sura_details.dart';
import 'package:islamiapproute/ui/home/tabs/quran/details2/sura_details2.dart';
import 'package:islamiapproute/utils/app_theme.dart';
import 'ui/home/homescreen.dart';
import 'ui/boarding/onboardingscreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Onboardingscreen.routeName,
      routes: {
        Onboardingscreen.routeName:(context)=>Onboardingscreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
        SuraDetailsScreen2.routeName:(context)=>SuraDetailsScreen2(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }

}
