import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/fast_laughs/icon_text_column_widget.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/fast_laughs/fast_laugh_controller.dart';

import '../common_widgets/text_widget_common.dart';

class ButtonOnFastLaughVideo extends StatelessWidget {
  ButtonOnFastLaughVideo({
    super.key,
  });

  FastLaughController fastLaughController = Get.put(FastLaughController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
            child: GestureDetector(
              onTap: () {
                if (fastLaughController.isMuted.value) {
                  fastLaughController.isMuted.value = false;
                } else {
                  fastLaughController.isMuted.value = true;
                }
              },
              child: CircleAvatar(
                radius: 20.sp,
                backgroundColor: kBlack.withOpacity(0.6),
                child: Icon(
                  fastLaughController.isMuted.value
                      ? Icons.volume_off_rounded
                      : Icons.volume_up,
                  color: kSearchBarIconColor,
                  size: 25.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25.sp,
                      backgroundColor: kBlue,
                      // child: Image.network(posterPath),
                    ),
                    Positioned(
                      bottom: -6,
                      right: 3,
                      child: TextWidgetCommon(
                        text: 'LOL',
                        textColor: kWhite,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                kHeight30,
                IconTextColumnWidget(
                  onTap: () {
                    if (fastLaughController.isLiked.value) {
                      fastLaughController.isLiked.value = false;
                    } else {
                      fastLaughController.isLiked.value = true;
                    }
                  },
                  size: 30,
                  icon: fastLaughController.isLiked.value
                      ? Icons.insert_emoticon_rounded
                      : Icons.sentiment_very_satisfied_rounded,
                  text: "LOL",
                ),
                kHeight30,
                IconTextColumnWidget(
                  onTap: () {},
                  size: 35,
                  icon: Icons.add,
                  text: "MyList",
                ),
                kHeight30,
                IconTextColumnWidget(
                  onTap: () async {
                    // print("SHARING");
                    // await Share.shareUri(Uri.parse(posterPath));
                  },
                  size: 30,
                  icon: Icons.share,
                  text: "Share",
                ),
                kHeight30,
                IconTextColumnWidget(
                  onTap: () {
                    if (fastLaughController.isPlaying.value) {
                      fastLaughController.isPlaying.value = false;
                    } else {
                      fastLaughController.isPlaying.value = true;
                    }
                  },
                  size: 38,
                  icon: fastLaughController.isPlaying.value
                      ? Icons.pause
                      : Icons.play_arrow,
                  text: "PLAY",
                ),
                kHeight10,
              ],
            ),
          ),
        ],
      );
    });
  }
}
