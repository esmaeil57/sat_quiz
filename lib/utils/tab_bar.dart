import 'package:flutter/material.dart';
import 'package:sat_test/Screens/tabs/workout_program.dart';
import 'package:sat_test/utils/text_style.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TabBar(
          dividerColor: Colors.black12,
          controller: _tabController,
          tabs:  const [
            Tab(child: Text("All Type",)),
            Tab(child: Text("Full Body",)),
            Tab(child: Text("Upper",)),
            Tab(child: Text("Lower",)),
          ],
          indicatorColor: Colors.black87,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal,
              color: Colors.black12),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
          Center(child: WorkoutProgram()),

          Center(child: WorkoutProgram()),

          Center(child: WorkoutProgram()),

          Center(child: WorkoutProgram()),
        ],
      ),
    );
  }
}