import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';

class SearchTitleText extends StatelessWidget {
  const SearchTitleText({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextWidgetCommon(
      text: title,
      fontSize: 23.sp,
      fontWeight: FontWeight.w600,
      textColor: kWhite,
      textAlign: TextAlign.start,
    );
  }
}
