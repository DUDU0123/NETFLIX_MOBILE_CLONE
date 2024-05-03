import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:netflix/components/common_widgets/horizontal_scroll_poster.dart';
import 'package:netflix/components/common_widgets/scroll_poster_text_widget.dart';
import 'package:netflix/view_model/home/home_controller.dart';
class ReleasedPastYear extends StatelessWidget {
   ReleasedPastYear({
    super.key,
    required this.topText,
  });
  HomeController homeController = Get.put(HomeController());
  final String topText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScrollPosterTextWidget(topText: topText),
        HorizontalScrollPoster(movieList: homeController.releasePastList,),
      ],
    );
  }
}

class TrendingNow extends StatelessWidget {
   TrendingNow({
    super.key,
    required this.topText,
  });
  HomeController homeController = Get.put(HomeController());
  final String topText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScrollPosterTextWidget(topText: topText),
        HorizontalScrollPoster(movieList:homeController.trendingNowList,),
      ],
    );
  }
}

class TenseDramas extends StatelessWidget {
   TenseDramas({
    super.key,
    required this.topText,
  });
  HomeController homeController = Get.put(HomeController());
  final String topText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScrollPosterTextWidget(topText: topText),
        HorizontalScrollPoster(movieList: homeController.tenseDramaList,),
      ],
    );
  }
}

class SouthIndianMovies extends StatelessWidget {
   SouthIndianMovies({
    super.key,
    required this.topText,
  });
  HomeController homeController = Get.put(HomeController());
  final String topText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScrollPosterTextWidget(topText: topText),
        HorizontalScrollPoster(movieList: homeController.southIndianList,),
      ],
    );
  }
}
