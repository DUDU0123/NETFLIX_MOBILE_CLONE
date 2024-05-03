import 'package:flutter/material.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IconTextColumnWidget extends StatelessWidget {
  const IconTextColumnWidget({
    super.key,
    required this.icon,
    required this.text,
    this.size, this.onTap, this.fontSize, this.color,
  });

  final IconData icon;
  final String text;
  final double? size;
  final double? fontSize;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhite,
            size: size?.sp,
          ),
          TextWidgetCommon(
            text: text,
            textColor: color?? kWhite,
            fontSize: fontSize??12.sp,
            fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}