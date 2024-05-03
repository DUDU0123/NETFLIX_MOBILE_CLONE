import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class SmartDownloadsWidget extends StatelessWidget {
  const SmartDownloadsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.w),
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: kWhite,
            size: 30.sp,
          ),
          kWidth10,
          TextWidgetCommon(
            text: "Smart Downloads",
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            textColor: kWhite,
          ),
        ],
      ),
    );
  }
}