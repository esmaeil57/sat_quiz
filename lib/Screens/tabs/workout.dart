import 'package:flutter/material.dart';
import 'package:sat_test/utils/tab_bar.dart';
import 'package:sat_test/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;
import '../../utils/appAssets.dart';

class WorkOut extends StatelessWidget{
  static const String routeName = "Workout";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.only(left: 9.0),
            child: Image.asset(AppAssets.pic)),
        title: Column(children: [
          Text("Hello , Jade", style: Style.normal.copyWith(fontSize: 20),),
          Text("Ready to Workout ?", style: Style.bold01.copyWith(fontSize: 20),),
        ],),
        actions: [
          Container(
            width: 17.48,
            height: 19,
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.notifications_none_sharp,weight:17.48 ,
              color:Color.fromARGB(255, 16, 24, 40),),
          ),
        ],
      ),
      body: bodyContent(),
    );
  }
}

bodyContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
    Container(
      color: const Color(0xFFEAECF5),
      margin: const EdgeInsets.all(15.0) ,
      padding: const EdgeInsets.all(15.0),
      child:  Row(children: [
        Expanded(child: Data(AppAssets.heartIcon,"Heart Rate","81 BPM ")) ,
        Container(
          height: 60,
            child: const VerticalDivider(thickness:3,color: Color(0x4F89CBDE,),)),
        Expanded(child: Data(AppAssets.drawer,"To-Do","32.5 %")),
        Container(
            height: 60,
            child: const VerticalDivider(thickness:3,color: Color(0x4F89CBDE,),)),
        Expanded(child: Data(AppAssets.calo,"Calo","1000 Cal")),
      ],),
    ),
        const SizedBox(height: 45),
        const Row(
          children: [
            SizedBox(width: 10,),
            Text("Workout Programs",style:TextStyle(fontSize:20,
                fontWeight: FontWeight.w600),),
          ],
        ),
        const SizedBox(height: 15),
        Expanded(child: MyTabBar()),
  ]);
}

class Data extends StatelessWidget{
  String image ;
  String text ;
  String body ;

  Data(this.image,this.text,this.body);

  Widget build(BuildContext context){
    return Column(children: [
      Row(children: [
        Image.asset(image),
        const SizedBox(width: 5,),
        Text(text,style: Style.normal.copyWith(fontSize: 16),)
      ],),
      const SizedBox(height: 6,),
      Text(body,style: Style.normal.copyWith(fontSize: 18),),
    ],);
  }
}