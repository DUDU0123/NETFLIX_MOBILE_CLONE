import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class FilmPoster extends StatelessWidget {
  const FilmPoster({
    super.key,
    required this.imagePath,
    this.margin = const EdgeInsets.symmetric(horizontal: 3.6),
    this.height, this.width,
  });
  final String imagePath;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: margin,
        height: height ?? screenHeight(context: context) / 3.78.h,
        width:width?? screenWidth(context: context) / 2.90.w,
        decoration: BoxDecoration(
          color: kTransparent,
          borderRadius: BorderRadius.all(
            Radius.circular(6.sp),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.sp),
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
