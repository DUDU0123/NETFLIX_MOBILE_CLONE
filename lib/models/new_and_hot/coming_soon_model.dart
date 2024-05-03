class ComingSoonModel {
  String overview;
  String posterPath;
  String backdropPath;
  String title;
  String originalTitle;
  String releaseDate;
  ComingSoonModel({
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
  });

  // assingning json to dart
  factory ComingSoonModel.fromJson(Map<String, dynamic> json) {
    return ComingSoonModel(
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      title: json['title'],
      originalTitle: json['original_title'],
      releaseDate: json['release_date'],
    );
  }
}
