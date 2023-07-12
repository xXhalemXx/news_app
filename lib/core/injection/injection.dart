import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/news/data/local/data_sources/cache_data.dart';
import 'package:news_app/news/data/remote/data_sources/web_services.dart';
import 'package:news_app/news/data/repositories/news_repo_impl.dart';
import 'package:news_app/news/domain/repositories/news_repo.dart';
import 'package:news_app/news/domain/use_cases/get_news_use_case.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_cubit.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerLazySingleton<NewsCubit>(() => NewsCubit(getNews: getIt()));
  getIt.registerLazySingleton<GetNews>(() => GetNews(newsRepo: getIt()));
  getIt.registerLazySingleton<NewsRepo>(
      () => NewsRepoImpl(webServices: getIt()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(Dio()));
  getIt.registerLazySingleton<ModeCubit>(() => ModeCubit());
  getIt.registerLazySingleton<CacheData>(() => CacheData());
}
