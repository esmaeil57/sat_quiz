import 'package:flutter/material.dart';
import 'package:sat_test/utils/appAssets.dart';
import 'package:sat_test/utils/text_style.dart';
List<String> images = [
  AppAssets.character,
  AppAssets.character,
  AppAssets.character,
];
class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                color: const Color(-1245709), // Set the desired background color
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6, // Adjust the width as needed
                      child: Column(
                        children: [
                          Row(children: [
                            Text("Positive Vibes",style:Style.bold.copyWith(fontSize: 20,color:
                            const Color(-13352876)))
                          ],),
                          Row(children: [
                            Text("Boost your mood with",
                                style:Style.normal.copyWith(fontSize: 20))
                          ],),
                          Row(children: [
                            Text("positive vibes .",
                                style:Style.normal.copyWith(fontSize: 20))
                          ],),
                          const SizedBox(height: 15),
                           Row(children: [
                            const Icon(Icons.play_circle, color:Colors.green ,),
                            Text("  10 mins " ,
                              style: Style.normal.copyWith(fontSize: 16),)
                          ],),
                        ],
                      ),
                    ),
                    Image.asset(
                      images[index],
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            int index = images.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.grey: Colors.blueGrey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}