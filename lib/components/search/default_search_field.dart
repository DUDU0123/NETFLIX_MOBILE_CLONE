import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';


class DeafultSearchField extends StatelessWidget {
  const DeafultSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: screenWidth(context: context),
      decoration: BoxDecoration(
          color: kGrey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10.sp)),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/search_icon.png",
              scale: 25.sp,
              color: kSearchBarIconColor,
            ),
            TextWidgetCommon(
              text: "Search",
              textColor: kSearchBarIconColor,
            )
          ],
        ),
      ),
    );
  }
}