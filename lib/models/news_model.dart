class NewsModel {
  final String? newsImage;
  final String newsTitle;
  final String? newsSubTitle;

  const NewsModel(
      {required this.newsImage,
      required this.newsTitle,
      required this.newsSubTitle});

  factory NewsModel.fromjson(json) {
    return NewsModel(
        newsImage: json["urlToImage"],
        newsTitle: json["title"],
        newsSubTitle: json["description"]);
  }
}
