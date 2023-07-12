import 'package:dio/dio.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gnews.io/api/v4/')
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('top-headlines')
  Future<News> getSpecificNews(
    @Query("country") String country,
    @Query("category") String category,
    @Query("apikey") String apikey,
  );

}