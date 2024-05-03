import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/fast_laughs/icon_text_column_widget.dart';
import 'package:netflix/components/new_and_hot/video_thumbnail_widget_new_and_hot.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';


class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({super.key, required this.image, required this.movieName, required this.overView});
  final String image;
  final String movieName;
  final String overView;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VideoThumbnailWidgetNewAndHot(image: image,),
          kHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             sizedBoxBlank,
              Row(
            children: [
              IconTextColumnWidget(
                icon: Icons.share,
                color: kGrey,
                text: "Share",
                fontSize: 11.sp,
              ),
              kWidth10,
              IconTextColumnWidget(
                icon: Icons.add,
                color: kGrey,
                text: "My List",
                fontSize: 11.sp,
              ),
              kWidth10,
              IconTextColumnWidget(
                icon: Icons.play_arrow,
                color: kGrey,
                text: "Play",
                fontSize: 11.sp,
              ),
            ],
          ),
            ],
          ),
          kHeight20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgetCommon(
                text: movieName,
                fontSize: 19.sp,
                textColor: kWhite,
                fontWeight: FontWeight.w700,
              ),
              TextWidgetCommon(
                maxLines: 4,overflow:  TextOverflow.ellipsis,
                text:
                    overView,
                fontSize: 15.sp,
                textColor: kGrey,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}