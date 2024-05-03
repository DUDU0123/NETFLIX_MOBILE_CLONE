import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/common_widgets/scroll_poster_text_widget.dart';
import 'package:netflix/components/home/number_card_widget.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/home/home_controller.dart';

class TextNumberCardList extends StatelessWidget {
   TextNumberCardList({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ScrollPosterTextWidget(topText: "Top 10 TV Shows in India Today"),
        SizedBox(
          height: screenHeight(context: context) / 3.78.h,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 5),
            scrollDirection: Axis.horizontal,
            itemCount: homeController.topTenShowList.length,
            itemBuilder: (context, index) {
            return NumberCardWidget(imagePath: "$kImageBaseUrl${homeController.topTenShowList[index].posterPath}", index: index,);
          },),
        )
      ],
    );
  }
}
