import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/common_widgets/film_poster.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/search/search_title_text.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/view_model/search/search_getx_controller.dart';

class SearchResultPage extends StatelessWidget {
  SearchResultPage({super.key});

  SearchGetxController searchGetxController = Get.put(SearchGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTitleText(
            title: "Movies & TV",
          ),
          Obx(() {
            return Expanded(
              child: searchGetxController.searchedMovieList.isNotEmpty
                  ? GridView.builder(
                      itemCount: searchGetxController.searchedMovieList.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                        crossAxisSpacing: 1.sp,
                        mainAxisSpacing: 6.sp,
                      ),
                      itemBuilder: (context, index) => FilmPoster(
                        imagePath:
                            "$kImageBaseUrl${searchGetxController.searchedMovieList[index].posterPath}",
                      ),
                    )
                  : Center(
                      child: TextWidgetCommon(
                        text: "No Movies Found",
                        textColor: kGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            );
          }),
        ],
      ),
    );
  }
}
