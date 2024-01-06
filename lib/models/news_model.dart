class NewsModel {
  final String? newsImage;
  final String newsTitle;
  final String? newsSubTitle;
  final String url;

  const NewsModel(
      {required this.url,
      required this.newsImage,
      required this.newsTitle,
      required this.newsSubTitle});

  factory NewsModel.fromjson(json) {
    return NewsModel(
        newsImage: json["urlToImage"],
        newsTitle: json["title"],
        newsSubTitle: json["description"],
        url: json["url"]);
  }
}
