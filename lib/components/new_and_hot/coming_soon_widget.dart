import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/fast_laughs/icon_text_column_widget.dart';
import 'package:netflix/components/new_and_hot/video_thumbnail_widget_new_and_hot.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';
class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key, required this.image, required this.movieName, required this.overView, required this.releaseDate,
  });
  final String image;
  final String movieName;
  final String overView;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    DateTime parsedDate = DateTime.parse(releaseDate);
    String month = DateFormat('MMM').format(parsedDate).toUpperCase();
    String day = DateFormat('dd').format(parsedDate);
    String dayName = DateFormat('EEEE').format(parsedDate);
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w, ),
      child: Row(
        children: [
          SizedBox(
            height: screenHeight(context: context)/1.70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgetCommon(
                  text: month.toString(),
                  fontSize: 15.sp,
                  textColor: kGrey,
                  fontWeight: FontWeight.normal,
                ),
                TextWidgetCommon(
                  text: day,
                  fontSize: 40.sp,
                  textColor: kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          kWidth5,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoThumbnailWidgetNewAndHot(image:image,),
                kHeight25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 195.w,
                      child: TextWidgetCommon(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: movieName,
                        fontSize: 38.sp,
                        textColor: kWhite,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Aladin",
                      ),
                    ),
                    Row(
                      children: [
                        IconTextColumnWidget(
                          icon: Icons.notifications_none,
                          text: "Remind Me",
                          fontSize: 10,
                          color: kGrey,
                        ),
                        kWidth20,
                        IconTextColumnWidget(
                          icon: Icons.info_outline,
                          text: "Info",
                          fontSize: 10,
                          color: kGrey,
                        )
                      ],
                    )
                  ],
                ),
                TextWidgetCommon(
                  text: "Coming on $dayName",
                  fontSize: 16.sp,
                  textColor: kWhite.withOpacity(0.7),
                  fontWeight: FontWeight.normal,
                ),
                kHeight10,
                TextWidgetCommon(
                  text: movieName,
                  fontSize: 23.sp,
                  textColor: kWhite,
                  fontWeight: FontWeight.bold,
                ),
                kHeight5,
                TextWidgetCommon(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  text:
                      overView,
                  fontSize: 14.sp,
                  textColor: kGrey.withOpacity(0.7),
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}