class HomeModel{
  String posterPath;
  HomeModel({
    required this.posterPath,
  });

  // assingning json to dart
  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      posterPath: json['poster_path']??'/uPpmBjY3znUqGY8kYwI5xvOrSc0.jpg',
    );
  }
}