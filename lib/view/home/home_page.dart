import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/text_film_poster_container.dart';
import 'package:netflix/components/home/home_top_part.dart';
import 'package:netflix/components/home/text_number_card_list.dart';
import 'package:netflix/components/home/top_logo_and_text_part_home.dart';
import 'package:netflix/constants/height_width/height_width.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });
  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 0),
                  children: [
                    HomeTopPart(),
                    kHeight20,
                    ReleasedPastYear(
                      topText: "Released in the past year",
                    ),
                    kHeight25,
                    TrendingNow(
                      topText: "Trending Now",
                    ),
                    kHeight25,
                    TextNumberCardList(),
                    kHeight25,
                    TenseDramas(
                      topText: "Tense Dramas",
                    ),
                    kHeight25,
                    SouthIndianMovies(
                      topText: "South Indian Cinema",
                    ),
                    kHeight25,
                  ],
                ),
                // if value is true ,it means scroll to up so we need to show the top widget
                scrollNotifier.value
                    ? const TopLogoAndTextPartHome()
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
