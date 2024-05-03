import 'package:netflix/constants/api/api_key.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const trendingNow = '$kBaseUrl/trending/all/day?api_key=$apiKey';
  static const topRated = '$kBaseUrl/movie/top_rated?api_key=$apiKey';
  static const nowPlaying = '$kBaseUrl/movie/now_playing?api_key=$apiKey';
  static const popularMovies = '$kBaseUrl/movie/popular?api_key=$apiKey';
  static const upcomingMovies = '$kBaseUrl/movie/upcoming?api_key=$apiKey';
  static const genreList = '$kBaseUrl/genre/movie/list?api_key=$apiKey';
  static const malayalamMovies = '$kBaseUrl/discover/movie?api_key=$apiKey&with_original_language=ml';
  static const topTvShows = '$kBaseUrl/discover/tv?api_key=$apiKey';
  static const pastYearMovies = '$kBaseUrl/discover/movie?api_key=$apiKey&primary_release_date.gte=2023-01-01&primary_release_date.lte=2023-12-31';
  static const tenseDramas = '$kBaseUrl/tv/airing_today?api_key=$apiKey';
}
