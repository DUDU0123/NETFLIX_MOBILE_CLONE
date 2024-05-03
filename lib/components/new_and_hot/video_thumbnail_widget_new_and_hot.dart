import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class VideoThumbnailWidgetNewAndHot extends StatelessWidget {
  const VideoThumbnailWidgetNewAndHot({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: screenHeight(context: context) / 4.2,
          width: screenWidth(context: context),
          child: Image.network(image, fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 10.h,right: 10.w,
          child: CircleAvatar(
            radius: 20.sp,
            backgroundColor: kBlack.withOpacity(0.3),
            child: Center(
              child: Icon(
                Icons.volume_off_outlined,
                color: kWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}