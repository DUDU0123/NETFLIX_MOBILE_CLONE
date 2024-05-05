import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/constants/colors/colors.dart';

class UserProfileIconWidget extends StatelessWidget {
  const UserProfileIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.sp),
      height: 26.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.circular(5.sp),
      ),
    );
  }
}
