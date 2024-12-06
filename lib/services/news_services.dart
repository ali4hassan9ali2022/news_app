import 'package:dio/dio.dart';
import 'package:news_app/Models/articles_model.dart';

class NewsServices {
  final Dio dio;
  final String apiKey = "038db3e6297343e2b9275ec42333a688";
  final String url = "https://newsapi.org/v2";
  NewsServices(this.dio);
  Future<List<ArticlesModel>> getNews({required String category}) async {
    Response response = await dio
        .get("$url/top-headlines?country=us&apiKey=$apiKey&category=$category");
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data["articles"];
    List<ArticlesModel> articlesList = [];
    for (var article in articles) {
      ArticlesModel articlesModel = ArticlesModel.fromJson(article);
      articlesList.add(articlesModel);
    }
    return articlesList;
  }
}
