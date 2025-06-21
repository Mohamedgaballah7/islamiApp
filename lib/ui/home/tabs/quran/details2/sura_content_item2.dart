import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';

class SuraContentItem2 extends StatelessWidget {
  String suraContent;
  SuraContentItem2({super.key, required this.suraContent});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Text(suraContent ,
        textDirection: TextDirection.rtl,
        style: AppStyles.bold20Primary,
      ),
    );
  }
}
