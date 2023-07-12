import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';

part 'news_states.freezed.dart';
@freezed
class NewsStates with _$NewsStates{
  const factory NewsStates.idle()=Idle;
  const factory NewsStates.firsPageData(List<Articles> articles)=FirsPageData;
  const factory NewsStates.toggleThrowNews(List<Articles> articles, int index)=ToggleThrowNews;
  const factory NewsStates.error(String message,int index)=Error;
}