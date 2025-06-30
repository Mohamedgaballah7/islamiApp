
import 'package:flutter/material.dart';
import 'package:islamiapproute/utils/app_colors.dart';
import 'package:islamiapproute/utils/app_styles.dart';
import 'package:islamiapproute/utils/app_theme.dart';

class SuraContentItem extends StatefulWidget {
  String suraContent;
  int index;
  bool isSelected;
   SuraContentItem({super.key,
     required this.suraContent,
     required this.index,
     this.isSelected=false
     });

  @override
  State<SuraContentItem> createState() => _SuraContentItemState();
}

class _SuraContentItemState extends State<SuraContentItem> {

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        widget.isSelected=true;
        setState(() {
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height*0.02),
        alignment: Alignment.center,
        decoration: widget.isSelected?AppTheme.selectedBox:AppTheme.unselectedBox,
        child: Text('${widget.suraContent} [${widget.index+1}]',
        textDirection: TextDirection.rtl,
        style:widget.isSelected?AppStyles.bold20Black:AppStyles.bold20Primary,),
      ),
    );
  }

}
