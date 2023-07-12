import 'package:news_app/news/data/api_result/api_result.dart';
import 'package:news_app/news/data/remote/data_sources/web_services.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';

abstract class NewsRepo {
  WebServices webServices;

  NewsRepo({required this.webServices});

  Future<ApiResult<News>> getNews(String category);
}
