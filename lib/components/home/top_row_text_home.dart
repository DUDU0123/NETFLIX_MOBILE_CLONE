import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';

class TopRowTextHome extends StatelessWidget {
  const TopRowTextHome({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TextWidgetCommon(
        text: text,
        textColor: kWhite,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}