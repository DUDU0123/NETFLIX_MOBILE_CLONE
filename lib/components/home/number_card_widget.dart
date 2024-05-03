import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/film_poster.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget(
      {super.key, required this.imagePath, required this.index});
  final String imagePath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            kWidth45,
            FilmPoster(
              imagePath: imagePath,
            ),
          ],
        ),
        Positioned(
            bottom: -40.h,
            left: -5.w,
            child: BorderedText(
              strokeColor: kWhite,
                child: Text(
              "${index + 1}",
              style: TextStyle(
                fontSize: 130,
                color: kBlack,
                fontWeight: FontWeight.bold,
              ),
            )))
      ],
    );
  }
}
