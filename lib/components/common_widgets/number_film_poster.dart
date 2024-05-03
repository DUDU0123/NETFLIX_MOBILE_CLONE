import 'package:flutter/material.dart';
import 'package:netflix/components/common_widgets/film_poster.dart';
import 'package:netflix/components/common_widgets/scroll_poster_text_widget.dart';
class NumberFilmPoster extends StatelessWidget {
  const NumberFilmPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ScrollPosterTextWidget(topText: "Top 10"),
        Stack(
          children: [
            FilmPoster(imagePath: "",),
          ],
        )
      ],
    );
  }
}
