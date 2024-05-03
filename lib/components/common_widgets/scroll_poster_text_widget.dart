import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/bold_common_text_widget.dart';

class ScrollPosterTextWidget extends StatelessWidget {
  const ScrollPosterTextWidget({
    super.key,
    required this.topText,
  });

  final String topText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 0),
      child: CommonTextWidgetBold(topText: topText),
    );
  }
}

