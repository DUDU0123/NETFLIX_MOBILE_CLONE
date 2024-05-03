import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/components/home/bottom_part_home_page.dart';
import 'package:netflix/components/home/shade_providers.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/home/home_controller.dart';

class HomeTopPart extends StatelessWidget {
   HomeTopPart({
    super.key,
  });
  HomeController homeController = HomeController();
  List<String> list = [
    '$kImageBaseUrl/gxVcBc4VM0kAg9wX4HVg6KJHG46.jpg',
    '$kImageBaseUrl/f4Yg5yKoDTNdYScm01SC0TQE9ar.jpg',
    '$kImageBaseUrl/346ju9C5zy0tkzfQoetOYtM74gw.jpg',
    '$kImageBaseUrl/cxevDYdeFkiixRShbObdwAHBZry.jpg',
    '$kImageBaseUrl/7O4iVfOMQmdCSxhOg1WnzG1AgYT.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          disableGesture: true,
          options: CarouselOptions(
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            disableCenter: true,
              height: screenHeight(context: context) / 1.3,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 10),
              pageSnapping: true,
              enlargeFactor: 0.0,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1)),
          itemCount: 5,
          itemBuilder: (context, index, realIndex) => SizedBox(
            width: screenWidth(context: context),
            child: Image.network(
              width: screenWidth(context: context),
              list[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
        
        topShadeProvider(),
        bottomShadeProvider(),
        // Bottom Part
        const BottomPartHomePage()
      ],
    );
  }
}
