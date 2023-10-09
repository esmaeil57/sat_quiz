import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';
import 'package:sat_test/utils/exercise.dart';
import 'package:sat_test/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;
import '../../utils/carouselSlider.dart';

class MentalHealthApp extends StatelessWidget {
  static const String routeName = "MentalHealthApp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.asset(AppAssets.logo),
        title: Text("Moody",style:Style.bold.copyWith(fontStyle:FontStyle.italic),),
        actions: [
          Container(
            width: 17.48,
            height: 19,
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 20),
            child:  const Icon(Icons.notifications_none_sharp,weight:17.48 ,
              color:Color.fromARGB(255, 16, 24, 40),),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left:18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                      text: "Hello, ",
                      style: Style.normal01,
                      children: [
                        TextSpan(
                            text: "Sara Rose",
                            style: Style.bold01 ,),
                      ]),
                )
              ],
            ),
            const SizedBox(height: 15),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("How are you feeling today ?",style: Style.normal01,)
              ],),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppAssets.love),
                Image.asset(AppAssets.cool),
                Image.asset(AppAssets.happy),
                Image.asset(AppAssets.sad),
              ],
            ),
            const SizedBox(height: 45),
             Row(
              children: [
                const Text("Feature",style:Style.bold,),
                const Spacer(),
                Text(" see more ",style: Style.bold.copyWith(fontSize:22,
                    color:Colors.green),),
                Container(
                    margin: const EdgeInsets.only(right: 6),
                child: const Icon(Icons.arrow_forward_ios_sharp ,
                  color: Colors.green,)),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(child: ImageCarousel()),
            Expanded(
              child: Column(
                children: [
                  Row(children: [ const Text("Exercise",style:Style.bold,),
                    const Spacer(),
                    Text(" see more ",style: Style.bold.copyWith(fontSize:22,
                        color:Colors.green),),
                    Container(
                        margin: const EdgeInsets.only(right: 6),
                        child: const Icon(Icons.arrow_forward_ios_sharp ,
                          color: Colors.green,)),],),
                      Exercise(AppAssets.relax,"Relaxation",
                          AppAssets.madetation,"Madetation"),
                      const SizedBox(height: 15),
                      Exercise(AppAssets.breath,"Breathing",AppAssets.yoga,"Yoga"),
                    ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
