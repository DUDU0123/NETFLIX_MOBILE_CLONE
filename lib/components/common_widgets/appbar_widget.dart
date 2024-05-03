import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_widget_common.dart';
import 'package:netflix/components/common_widgets/user_profile_icon_widget.dart';
import 'package:netflix/constants/colors/colors.dart';


class AppBarWidgetCommon extends StatelessWidget {
  const AppBarWidgetCommon({
    Key? key,
    required this.title, this.bottom,
  }) : super(key: key);
  final String title;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidgetCommon(
        text: title,
        fontWeight: FontWeight.w900,
        fontSize: 26.sp,
        textColor: kWhite,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.cast,
            color: kWhite,
            size: 29.sp,
          ),
        ),
       const UserProfileIconWidget(),
      ],
      bottom: bottom,
    );
  }
}

