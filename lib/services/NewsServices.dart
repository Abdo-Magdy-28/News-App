import 'package:dio/dio.dart';
import 'package:new_app/models/articleModel.dart';

class NewService {
  String category;
  final Dio dio;
  NewService({required this.dio, required this.category});

  Future<List<Articlemodel>> getNews() async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apikey=d634da9a7c9541b8aa2e2caa25fe5d62&country=us&category=$category',
      );
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<Articlemodel> ArticlesList = [];
      for (var article in articles) {
        Articlemodel articlemodel = Articlemodel(
          title: article['title'],
          subtitle: article['description'],
          image: article['urlToImage'],
          url: article['url'],
        );
        ArticlesList.add(articlemodel);
      }
      return ArticlesList;
    } catch (e) {
      return [];
    }
  }
}
