import 'package:flutter/material.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class VideoListItemWidget extends StatelessWidget {
  const VideoListItemWidget({super.key, required this.posterPath});
  final String posterPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context: context),
      width: screenWidth(context: context),
      // color: Colors.accents[index],
      child: Image.network(posterPath, fit: BoxFit.cover,),
    );
  }
}
