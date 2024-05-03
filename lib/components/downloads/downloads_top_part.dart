import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/downloads/smart_downloads_widget.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';


class DownloadsTopPart extends StatelessWidget {
  const DownloadsTopPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SmartDownloadsWidget(),
    kHeight30,
    TextWidgetCommon(
      textAlign: TextAlign.center,
      text: "Introducing Downloads for You",
      fontSize: 23.sp,
      fontWeight: FontWeight.bold,
      textColor: kWhite,
    ),
    kHeight15,
    TextWidgetCommon(
      textAlign: TextAlign.center,
      text:
          "We'll download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice.",
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
      textColor: kGrey,
    ),
      ],
    );
  }
}