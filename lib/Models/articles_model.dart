class ArticlesModel {
  final String? image;
  final String title;
  final String? subTitle;
  const ArticlesModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  factory ArticlesModel.fromJson(json) {
    return ArticlesModel(
        image: json["urlToImage"],
        title: json["title"],
        subTitle: json["description"]);
  }
}
