import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class SearchVideoTileWidget extends StatelessWidget {
  const SearchVideoTileWidget({
    super.key,
    required this.videoTitle,
    required this.imagePath,
  });

  final String videoTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 130.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.sp),),
                height: 80.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Image.network(imagePath),
                ),
              ),
              kWidth10,
              SizedBox(
                  width: 130,
                  child: TextWidgetCommon(
                    text: videoTitle,
                    textColor: kWhite,
                    fontSize: 13.sp,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
          Icon(
            Icons.play_circle_outline,
            color: kWhite,
            size: 34.sp,
          )
        ],
      ),
    );
  }
}
