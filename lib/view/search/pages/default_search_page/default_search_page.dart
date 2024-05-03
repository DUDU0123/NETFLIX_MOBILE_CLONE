import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/common_widgets/search_video_tile_widget.dart';
import 'package:netflix/components/search/search_title_text.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/search/search_getx_controller.dart';

class SearchDefaultPage extends StatelessWidget {
  SearchDefaultPage({super.key});

  SearchGetxController searchGetxController = Get.put(SearchGetxController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: "Top Searches"),
        Expanded(
          child: Obx(() {
            return ListView.separated(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
              shrinkWrap: true,
              itemCount: searchGetxController.topSearchList.length,
              itemBuilder: (context, index) {
                return SearchVideoTileWidget(
                  imagePath:
                      "$kImageBaseUrl${searchGetxController.topSearchList[index].backdropPath}",
                  videoTitle:
                      searchGetxController.topSearchList[index].originalTitle,
                );
              },
              separatorBuilder: (context, index) => kHeight5,
            );
          }),
        ),
      ],
    );
  }
}
