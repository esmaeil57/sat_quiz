import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';

List<String> images = [
  AppAssets.selfCare,
  AppAssets.cycle,
];
class HotTopics extends StatefulWidget {
  @override
  _HotTopicsState createState() => _HotTopicsState();
}

class _HotTopicsState extends State<HotTopics> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height:  MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}