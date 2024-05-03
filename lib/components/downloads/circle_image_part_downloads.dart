import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/downloads/downloads_image_widget.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/downloads/downloads_api_controller.dart';

class CircleImagePartDownloads extends StatelessWidget {
  CircleImagePartDownloads({
    super.key,
  });
  DownloadsApiController downloadsApiController =
      Get.put(DownloadsApiController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context: context),
      height: screenHeight(context: context) / 2.3,
      color: kTransparent,
      child: Obx(() {
        return Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: kGrey,
                radius: screenWidth(context: context) / 2.65,
              ),
            ),
            for (var i = 0;
                i < downloadsApiController.downloadsList.length;
                i++)
              DownloadsImageWidget(
                width: screenWidth(context: context) / 2.6,
                height: i == 1
                    ? screenHeight(context: context) / 3.92
                    : i == 0
                        ? screenHeight(context: context) / 3.92
                        : screenHeight(context: context) / 3.50,
                margin: EdgeInsets.only(
                    left: i == 0
                        ? 168
                        : i == 1
                            ? 0
                            : 0,
                    right: i == 0
                        ? 0
                        : i == 1
                            ? 168
                            : 0,
                    bottom: i == 0
                        ? 10.h
                        : i == 1
                            ? 10.h
                            : 0.h,
                    top: i == 0
                        ? 0
                        : i == 1
                            ? 0
                            : 20.h),
                imagePath:
                    "$kImageBaseUrl${downloadsApiController.downloadsList[i].posterPath}",
                tiltAngle: i == 0
                    ? 18
                    : i == 1
                        ? -18
                        : 0,
              ),
          ],
        );
      }),
    );
  }
}
