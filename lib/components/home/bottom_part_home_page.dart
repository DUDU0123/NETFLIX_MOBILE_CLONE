import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/fast_laughs/icon_text_column_widget.dart';
import 'package:netflix/components/home/home_play_button.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class BottomPartHomePage extends StatelessWidget {
  const BottomPartHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: screenHeight(context: context) / 1.3,
        width: screenWidth(context: context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidgetCommon(
              text: "Emotional \u2022 Romantic \u2022 Drama",
              textColor: kWhite,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            kHeight10,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconTextColumnWidget(
                  icon: Icons.add,
                  text: "My List",
                ),
                HomePlayButton(),
                IconTextColumnWidget(
                  icon: Icons.info_outline,
                  text: "Info",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

