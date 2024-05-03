import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/button_widget.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';
class DownloadsButtonsPart extends StatelessWidget {
  const DownloadsButtonsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          height: 50,
          btnText: "Set Up",
          btnColor: kBlueDeep,
          margin: EdgeInsets.symmetric(horizontal: 10.sp),
          btnTextColor: kWhite,
        ),
        kHeight10,
        ButtonWidget(
          height: 50,
          btnText: "See What You Can Download",
          btnColor: kWhite,
          btnTextColor: kBlack,
        ),
      ],
    );
  }
}