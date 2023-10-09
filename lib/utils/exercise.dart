import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';
import 'package:sat_test/utils/carouselSlider.dart';
import 'package:sat_test/utils/text_style.dart';

class Exercise extends StatelessWidget {
  String image;
  String text ;
  String image1;
  String text1 ;
  Exercise(this.image , this.text ,this.image1,this.text1);

  @override
  Widget build(BuildContext context) {
    return content();
  }

  content() {
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            color: const Color(-134406),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image),
                const SizedBox(width: 10,),
                Text(text,style: Style.normal,)
              ],
            ),
          ),
          Container(
            color: const Color(-134406),
            width: 180,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image1),
                const SizedBox(width: 10,),
                Text(text1,style: Style.normal,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}