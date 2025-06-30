import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapproute/models/hadeth_model.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class HadethItem extends StatefulWidget {
  int index;

  HadethItem({super.key, required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth? hadeth;

  @override
  void initState() {
    loadHadethFile(widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.01,
        vertical: width * 0.03,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: width * 0.01,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        image: DecorationImage(image: AssetImage(AppAssets.hadethContainerBG)),
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      child: hadeth == null
          ? Center(
              child: CircularProgressIndicator(color: AppColors.blackColor),
            )
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Image.asset(
                      AppAssets.hadethCornerLeftBG,
                      width: width * 0.15,
                    ),
                    Expanded(
                      child: Text(
                        hadeth?.title ?? '',
                        textAlign: TextAlign.center,
                        style: AppStyles.bold24Black,
                      ),
                    ),
                    Image.asset(
                      AppAssets.hadethCornerRightBG,
                      width: width * 0.15,
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      hadeth?.content ?? '',
                      textAlign: TextAlign.center,
                      style: AppStyles.bold16Black,
                    ),
                  ),
                ),
                Image.asset(AppAssets.hadethCornerBottomBG),
              ],
            ),
    );
  }

  void loadHadethFile(int index) async {
    String fileContent = await rootBundle.loadString(
      'assets/files/Hadeeth/h$index.txt',
    );
    String title = fileContent.substring(0, fileContent.indexOf('\n'));
    String content = fileContent.substring(fileContent.indexOf('\n') + 1);
    hadeth = Hadeth(title: title, content: content);
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {});
  }
}
