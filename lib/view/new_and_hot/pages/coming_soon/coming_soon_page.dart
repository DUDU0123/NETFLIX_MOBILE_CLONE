import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/new_and_hot/coming_soon_widget.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/new_and_hot/new_and_hot_controller.dart';

class ComingSoonPage extends StatelessWidget {
  ComingSoonPage({super.key});

  NewAndHotController comingSoonController = Get.put(NewAndHotController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView.separated(
          padding: EdgeInsets.only(top: 10.h),
          itemBuilder: (context, index) {
            return ComingSoonWidget(
              movieName:
                  comingSoonController.comingSoonList[index].originalTitle,
              overView: comingSoonController.comingSoonList[index].overview,
              releaseDate:
                  comingSoonController.comingSoonList[index].releaseDate,
              image:
                  '$kImageBaseUrl${comingSoonController.comingSoonList[index].backdropPath}',
            );
          },
          separatorBuilder: (context, index) => kHeight15,
          itemCount: comingSoonController.comingSoonList.length,
        );
      }),
    );
  }
}
