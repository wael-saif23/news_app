import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<NewsModel>> dioGet({
    required String category,
  }) async {
    try {
      Response response = await Dio().get(
          "https://newsapi.org/v2/top-headlines?apiKey=fb952aff28eb4449bb7458ab0388159a&category=$category&country=us");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> listJsonData = jsonData["articles"];
      List<NewsModel> listNewsModel = [];
      for (var element in listJsonData) {
        NewsModel newsModel = NewsModel.fromjson(element);
        listNewsModel.add(newsModel);
      }
      return listNewsModel;
    } catch (e) {
      return [];
    }
  }
}
