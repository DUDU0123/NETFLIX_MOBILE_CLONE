class EveryOnesWatchingModel {
  String overview;
  String posterPath;
  String backdropPath;
  String title;
  String originalTitle;
  EveryOnesWatchingModel({
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.title,
    required this.originalTitle,
  });

  // assingning json to dart
  factory EveryOnesWatchingModel.fromJson(Map<String, dynamic> json) {
    return EveryOnesWatchingModel(
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      title: json['title'],
      originalTitle: json['original_title'],
    );
  }
}
