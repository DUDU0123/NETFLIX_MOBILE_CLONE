import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/new_and_hot/new_and_hot_controller.dart';

import '../../../../components/new_and_hot/everyones_watching_widget.dart';

class EveryOnesWatchingPage extends StatelessWidget {
  const EveryOnesWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder(
      init: NewAndHotController(),
      builder: (everyOnesWatchingController) {
        return ListView.separated(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
          itemCount: everyOnesWatchingController.everyOnesWatchingList.length,
          itemBuilder: (context, index) {
            return EveryOnesWatchingWidget(
              movieName: everyOnesWatchingController
                  .everyOnesWatchingList[index].originalTitle,
              overView: everyOnesWatchingController
                  .everyOnesWatchingList[index].overview,
              image:
                  '$kImageBaseUrl${everyOnesWatchingController.everyOnesWatchingList[index].backdropPath}',
            );
          },
          separatorBuilder: (context, index) => kHeight10,
        );
      },
    ));
  }
}
