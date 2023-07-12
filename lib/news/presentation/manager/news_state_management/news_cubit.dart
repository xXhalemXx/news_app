import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/data/api_result/api_result.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:news_app/news/domain/use_cases/get_news_use_case.dart';
import 'package:news_app/news/presentation/manager/network_exceptions.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_states.dart';

class NewsCubit extends Cubit<NewsStates> {
  GetNews getNews;

  NewsCubit({required this.getNews}) : super(const NewsStates.idle());

  // main page variables
  List<BottomNavigationBarItem> iconsList = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.business_center_rounded), label: 'business'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.sports_outlined), label: 'Sports'),
    const BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
  ];
  List<String> appBarTitles = [
    'business News',
    'Sports News',
    'Science News',
  ];

  void firstOpen() async {
    emit(const NewsStates.idle());
    ApiResult<News> result = await getNews('business');
    result.when(success: (news) {
      emit(NewsStates.firsPageData(news.articles!));
    }, failure: (exception) {
      emit(NewsStates.error(
          NetworkExceptions.getDioExceptionMessage(exception),0));
    });
  }

  void toggleUsingNavBar(int newIndex) async {
    String category = getCategoryName(newIndex);
    ApiResult<News> result = await getNews(category);
    result.when(success: (news) {
      emit(NewsStates.toggleThrowNews(news.articles!, newIndex));
    }, failure: (exception) {
      emit(NewsStates.error(
          NetworkExceptions.getDioExceptionMessage(exception),newIndex));
    });
  }

  String getCategoryName(int index) {
    String category = '';
    switch (index) {
      case 0:
        {
          category = 'business';
        }
        break;
      case 1:
        {
          category = 'sports';
        }
        break;
      case 2:
        {
          category = 'science';
        }
        break;
    }
    return category;
  }


}
