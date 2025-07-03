import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_styles.dart';

class SebhaTab extends StatefulWidget {

  const SebhaTab({super.key});


  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  String sebhaText='سبحان الله';
  String sebhaNumber='0';
  int _tapCount = 0;
  double _angle = 0.0;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.07,vertical: height*0.04),
        child: Column(
          children: [
            Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى', style: AppStyles.bold24White),
            Stack(
              alignment: Alignment.center,
                children: [

              InkWell(
                onTap: _onTap,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child:Transform.rotate(
                    angle: _angle,
                    child: Image.asset(AppAssets.sebhaImage,
                    )),
              ),
              Column(
                children: [
                  SizedBox(height: height*0.08,),
                  Text(sebhaText,style: AppStyles.bold24White,),
                  SizedBox(height: height*0.02,),
                  Text(sebhaNumber,style: AppStyles.bold24White,),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
  void _onTap() {
    setState(() {
      _tapCount++;
      _angle += 2 * pi / 33;

      if (_tapCount <= 33) {
        sebhaText = 'سبحان الله';
        sebhaNumber = (_tapCount % 34).toString();
      } else if (_tapCount <= 66) {
        sebhaText = 'الحمد لله';
        sebhaNumber = ((_tapCount - 33) % 34).toString();
      } else if (_tapCount <= 99) {
        sebhaText = 'لا إله إلا الله';
        sebhaNumber = ((_tapCount - 66) % 34).toString();
      } else if (_tapCount <= 132) {
        sebhaText = 'الله أكبر';
        sebhaNumber = ((_tapCount - 99) % 34).toString();
      }
      if (_tapCount == 132) {
        _tapCount = 0;
        _angle = 0;
      }
    });
  }


}
