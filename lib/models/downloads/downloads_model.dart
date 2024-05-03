class DownloadsModel {
  String posterPath;
  DownloadsModel({
    required this.posterPath,
  });

  // assingning json to dart
  factory DownloadsModel.fromJson(Map<String, dynamic> json) {
    return DownloadsModel(
      posterPath: json['poster_path'],
    );
  }
}
