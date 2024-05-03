import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/film_poster.dart';
import 'package:get/get.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/models/home/home_model.dart';


class HorizontalScrollPoster extends StatelessWidget {
  const HorizontalScrollPoster({
    super.key,
    required this.movieList,
  });

  final List<HomeModel> movieList;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: screenHeight(context: context) / 3.78.h,
        child: ListView.builder(
          itemCount: movieList.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: FilmPoster(
                imagePath: "$kImageBaseUrl${movieList[index].posterPath}",
              ),
            );
          },
        ),
      );
    });
  }
}
