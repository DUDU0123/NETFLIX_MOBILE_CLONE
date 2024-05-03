import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/components/common_widgets/film_poster.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key, required this.imagePath, required this.tiltAngle, required this.margin,  this.height, this.width,
  });
  final String imagePath;
  final double tiltAngle;
  final EdgeInsetsGeometry margin;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: tiltAngle*pi/180,
      child: FilmPoster(
        width: width,
        height: height,
        margin:margin,
        imagePath: imagePath,
      ),
    );
  }
}
