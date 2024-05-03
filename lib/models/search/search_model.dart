class SearchModel{
  String overview;
  String posterPath;
  String backdropPath;
  String title;
  String originalTitle;
  String releaseDate;
  SearchModel({
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
  });

  // assingning json to dart
  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      overview: json['overview']??"Coming Soon",
      posterPath: json['poster_path']??'/bQ2ywkchIiaKLSEaMrcT6e29f91.jpg',
      backdropPath: json['backdrop_path']??'/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg',
      title: json['title']??'No Title',
      originalTitle: json['original_title']??'No Title',
      releaseDate: json['release_date']??'2024-03-14',
    );
  }
}