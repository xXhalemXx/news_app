import 'package:news_app/news/data/api_result/api_result.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:news_app/news/domain/repositories/news_repo.dart';

class GetNews{
  final NewsRepo newsRepo;
  GetNews({required this.newsRepo});

  Future<ApiResult<News>> call (String category) async{
    ApiResult<News> response= await newsRepo.getNews(category);
   return response;
  }

}