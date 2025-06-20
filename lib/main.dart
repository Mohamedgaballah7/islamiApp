
import 'package:flutter/material.dart';
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
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }

}
