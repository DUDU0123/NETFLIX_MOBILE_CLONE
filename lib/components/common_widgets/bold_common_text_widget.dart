import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';

class CommonTextWidgetBold extends StatelessWidget {
  const CommonTextWidgetBold({
    super.key,
    required this.topText,
  });

  final String topText;

  @override
  Widget build(BuildContext context) {
    return TextWidgetCommon(
      text: topText,
      fontSize: 19.sp,
      fontWeight: FontWeight.bold,
      textColor: kWhite,
      textAlign: TextAlign.start,
    );
  }
}