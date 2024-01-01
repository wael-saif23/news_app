import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});

  Future<List<NewsModel>> dioGet() async {
    Response response = await Dio().get(
        "https://newsapi.org/v2/top-headlines?apiKey=fb952aff28eb4449bb7458ab0388159a&category=general&country=us");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> listJsonData = jsonData["articles"];
    List<NewsModel> listNewsModel = [];
    for (var element in listJsonData) {
      NewsModel newsModel = NewsModel(
          newsImage: element["urlToImage"],
          newsTitle: element["title"],
          newsSubTitle: element["description"]);
      listNewsModel.add(newsModel);
    }
    return listNewsModel;
  }
}
