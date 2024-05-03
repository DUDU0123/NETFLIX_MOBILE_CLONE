import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';

class HomePlayButton extends StatelessWidget {
  const HomePlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
    //  TextButton.icon(
    //   style: TextButton.styleFrom(
    //     backgroundColor: kWhite,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(5.sp),
    //     ),
    //   ),
    //   onPressed: () {},
    //   icon: Icon(
    //     Icons.play_arrow,
    //     color: kBlack,
    //     size: 30.sp,
    //   ),
    //   label: TextWidgetCommon(
    //     text: "Play",
    //     textColor: kBlack,
    //     fontSize: 15.sp,
    //     fontWeight: FontWeight.bold,
    //   ),
    // );
    GestureDetector(
      onTap: () {

      },
      child: Container(
        width: 80.w,
        height: 34.h,
        padding: EdgeInsets.only(right: 10.sp,),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(5.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    Icon(
      Icons.play_arrow,
      color: kBlack,
      size: 30.sp,
    ),
    TextWidgetCommon(
      text: "Play",
      textColor: kBlack,
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
    ),
          ],
        ),
      ),
    );
  }
}
