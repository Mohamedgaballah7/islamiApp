
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'hadeth_item.dart';

class HadethTab extends StatelessWidget{
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
      ),
      items: List.generate(50, (index) => index+1,).map((index) {
        return Builder(
          builder: (BuildContext context) {
            return HadethItem(index: index,);
          },
        );
      }).toList(),
    );
  }


}