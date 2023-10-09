import 'package:flutter/material.dart';
import 'package:sat_test/Screens/tabs/mental_health.dart';
import 'package:sat_test/Screens/tabs/news.dart';
import 'package:sat_test/Screens/tabs/workout.dart';
import 'package:sat_test/utils/appAssets.dart';

import '../utils/text_style.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<Home> createState() => _HomeState();

}
class _HomeState extends State<Home> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    MentalHealthApp(),
    WorkOut(),
    Calendar(),
    News(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      onTap: (index) {
        setState(() {
          currentTabIndex = index;
        });
      },
      currentIndex: currentTabIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black,size: 25,),
            label: "Moody",),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view,color: Colors.black,size: 25,),
            label: "Workout"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded,
            color: Colors.black,size: 25,),
            label: "Calendar"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 25,),
            label: "News"),
      ],
    );
  }
}

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,);}}
