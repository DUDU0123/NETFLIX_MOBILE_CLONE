import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/home/top_row_text_home.dart';
import 'package:netflix/constants/colors/colors.dart';

class TopTextRowHome extends StatelessWidget {
  const TopTextRowHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TopRowTextHome(
            text: "TV Shows",
          ),
          const TopRowTextHome(
            text: "Movies",
          ),
          Row(
            children: [
              const TopRowTextHome(
                text: "Categories",
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: kWhite,
                size: 20.sp,
              )
            ],
          ),
        ],
      ),
    );
  }
}