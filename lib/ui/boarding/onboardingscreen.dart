import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiapproute/ui/home/homescreen.dart';

class Onboardingscreen extends StatelessWidget {
  static const String routeName = 'onboardingScreen';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        buildImagePage('assets/images/intro1.png'),
        buildImagePage('assets/images/intro2.png'),
        buildImagePage('assets/images/intro3.png'),
        buildImagePage('assets/images/intro4.png'),
        buildImagePage('assets/images/intro5.png'),
      ],
      onDone: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      showSkipButton: true,
      skip: Container(
          alignment: Alignment.bottomRight,
          child: const Text("Skip", style: TextStyle(color: Color(0xffE2BE7F)),)),
      next: const Icon(Icons.arrow_forward, color: Color(0xffE2BE7F)),
      done: const Text("Start", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffE2BE7F))),

      dotsDecorator: DotsDecorator(
        color: Colors.white38,
        activeColor: Colors.white,
        size: Size(6, 6),
        activeSize: Size(18, 6),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      dotsFlex: 2,

      globalBackgroundColor: Colors.black,
      curve: Curves.easeInOut,
    );
  }
  PageViewModel buildImagePage(String imagePath) {
    return PageViewModel(
      title: '',
      body: '',
      image: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      decoration: PageDecoration(
        pageColor: Colors.transparent,
        imageFlex: 1,
        bodyFlex: 0,
        contentMargin: EdgeInsets.zero,
        fullScreen: true,
      ),
    );
  }
}
