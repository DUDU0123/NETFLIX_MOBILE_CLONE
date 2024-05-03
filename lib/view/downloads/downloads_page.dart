import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/appbar_widget.dart';
import 'package:netflix/components/downloads/circle_image_part_downloads.dart';
import 'package:netflix/components/downloads/downloads_buttons_part.dart';
import 'package:netflix/components/downloads/downloads_top_part.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class DownloadsPage extends StatelessWidget {
  DownloadsPage({super.key});

  final downloadWidgetList = [
    const DownloadsTopPart(),
    CircleImagePartDownloads(),
    kHeight40,
    const DownloadsButtonsPart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidgetCommon(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(bottom: 20.h),
        itemBuilder: (context, index) => downloadWidgetList[index],
        separatorBuilder: (context, index) => kHeight5,
        itemCount: downloadWidgetList.length,
      ),
    );
  }
}
