import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';
import 'package:sat_test/utils/text_style.dart';

class WorkoutProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: const Color(0xFFEAECF5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.all(20.0),
                        child: Text(
                          "7 days",
                          style: Style.normal.copyWith(fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text("Morning Yoga", style: Style.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 20),
                        child: Text(
                          "Improve Mental Focus",
                          style: Style.normal.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.access_time_sharp, color: Colors.black54),
                            Text(
                              " 30 mins ",
                              style: Style.normal.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Image.asset(AppAssets.yogaex),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: const Color(0xFFEAECF5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.all(20.0),
                        child: Text(
                          "3 days",
                          style: Style.normal.copyWith(fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text("Plank Exercise", style: Style.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 20),
                        child: Text(
                          "Improve Mental Focus",
                          style: Style.normal.copyWith(fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.access_time_sharp, color: Colors.black54),
                            Text(
                              " 30 mins ",
                              style: Style.normal.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Image.asset(AppAssets.plank),
              ],
            ),
          )
        ],
      ),
    );
  }
}
