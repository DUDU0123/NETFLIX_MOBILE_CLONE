import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/user_profile_icon_widget.dart';
import 'package:netflix/components/home/top_text_row_widget.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class TopLogoAndTextPartHome extends StatelessWidget {
  const TopLogoAndTextPartHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1000),
      margin: EdgeInsets.only(top: 20.h),
      width: screenWidth(context: context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.sp),
                height: 50.h,
                width: 80.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/netflix.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.sp),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cast,
                        color: kWhite,
                        size: 33.sp,
                      ),
                    ),
                    const UserProfileIconWidget(),
                  ],
                ),
              )
            ],
          ),
          const TopTextRowHome(),
        ],
      ),
    );
  }
}