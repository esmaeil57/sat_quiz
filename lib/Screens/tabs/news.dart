import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';
import 'package:sat_test/utils/chips.dart';
import 'package:sat_test/utils/hotTopics.dart';
import 'package:sat_test/utils/text_style.dart';

class News extends StatelessWidget {
  static const String routeName = "News";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(763216117),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(AppAssets.appBar),
      ),
      body: details(),
    ) ;
  }}

details() {
  return  Center(
    child: Column(
      children: [
         Container(
           margin: const EdgeInsets.all(25),
           child:  TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              focusColor: Colors.black,
              hintText: "Articles,Video,Audio,and More....",
              hintStyle: Style.normal.copyWith(fontSize: 20),
              fillColor: Colors.black,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.black),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
        ),
         ),
        Row(children: [
          MyChip(Name: "Discover", IsSelected:true),
          MyChip(Name: "News", IsSelected: false),
          MyChip(Name: "MostViewed", IsSelected: false),
          MyChip(Name: "Popular", IsSelected: false),
        ],),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
                child: const Text("Hot Topics ",style:Style.bold,)),
            const Spacer(),
            Text(" see all ",style: Style.bold.copyWith(fontSize:22,
                color:Colors.purple),),
            Container(
                margin: const EdgeInsets.only(right: 6),
                child: const Icon(Icons.arrow_forward_ios_sharp ,
                  color: Colors.purple,)),
          ],
        ),
         HotTopics(),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text("Get Tips",style:Style.bold,)),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(AppAssets.doctor),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text("Connect with doctors & get suggestions",
                          style: Style.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 10, 20),
                      child: Text(
                        "Connect now and get expert insights",
                        style: Style.normal.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Text(
                        "View Details",
                        style: Style.bold.copyWith(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text("Cycle Phases and Period ",
                  style:Style.bold.copyWith(fontSize: 18),)),
            const Spacer(),
            Text(" see all ",style: Style.bold.copyWith(fontSize:20,
                color:Colors.purple),),
            Container(
                margin: const EdgeInsets.only(right: 6),
                child: const Icon(Icons.arrow_forward_ios_sharp ,
                  color: Colors.purple,)),
          ],
        ),
        const SizedBox(height: 15,),
      ],
    ),
  );
}