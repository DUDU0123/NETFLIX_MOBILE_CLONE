import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.height,
    required this.btnText,
    this.margin,
    required this.btnColor, required this.btnTextColor, this.fontSize, this.fontWeight,
  });

  final double height;
  final String btnText;
  final EdgeInsetsGeometry? margin;
  final Color btnColor;
  final Color btnTextColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          height: height.sp,
          width: screenWidth(context: context),
          margin: margin ?? EdgeInsets.symmetric(horizontal: 30.sp),
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Center(
            child: TextWidgetCommon(
              text: btnText,
              fontSize: fontSize?? 17.sp,
              fontWeight:fontWeight?? FontWeight.w800,
              textColor: btnTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
