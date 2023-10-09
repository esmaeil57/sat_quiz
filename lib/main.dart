import 'package:flutter/material.dart';
import 'package:sat_test/Screens/home.dart';
import 'package:sat_test/Screens/tabs/news.dart';
import 'package:sat_test/Screens/tabs/workout.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes : {
        Home.routeName : (_) => Home() ,
        WorkOut.routeName : (_) => WorkOut(),
        News.routeName: (_) => News(),
      },
      initialRoute: Home.routeName,
    );
  }
}
