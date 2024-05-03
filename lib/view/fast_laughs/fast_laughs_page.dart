import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/components/fast_laughs/buttons_on_fast_laugh.dart';
import 'package:netflix/components/fast_laughs/video_list_item_widget.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/view_model/home/home_controller.dart';

class FastLaughsPage extends StatelessWidget {
  FastLaughsPage({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    List video = List.generate(
        homeController.southIndianList.length, (index) => 'LOL$index');
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return Stack(
            children: [
              // Obx(() {
              //   return
              // }),
              PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  homeController.southIndianList.length,
                  (index) {
                    return VideoListItemWidget(
                      posterPath:
                          '$kImageBaseUrl${homeController.southIndianList[index].posterPath}',
                    );
                  },
                ),
              ),
              ButtonOnFastLaughVideo(),
            ],
          );
        }),
      ),
    );
  }
}
