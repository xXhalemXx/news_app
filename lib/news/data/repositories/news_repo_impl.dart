import 'package:dio/dio.dart';
import 'package:news_app/news/data/api_result/api_result.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:news_app/news/domain/repositories/news_repo.dart';

class NewsRepoImpl extends NewsRepo {
  NewsRepoImpl({required super.webServices});

  @override
  Future<ApiResult<News>> getNews(String category) async {
    try {
      News respond = await webServices.getSpecificNews(
          'eg', category, 'c337954dd34aac496f627b7b2f0a96ca');
      return ApiResult.success(respond);
    }catch(e){
      return ApiResult.failure(e);
    }
  }

}
