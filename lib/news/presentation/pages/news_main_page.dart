import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/reusable_component/common_component.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_cubit.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_states.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_cubit.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_states.dart';
import 'package:news_app/news/presentation/widgets/erorr_body.dart';
import 'package:news_app/news/presentation/widgets/idel_state_body.dart';
import 'package:news_app/news/presentation/widgets/news_body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (BuildContext context, state) {
        return state.when(
          idle: () {
            return commonMainPage(context: context, body: const IdleBody());
          },
          firsPageData: (articles) {
            return commonMainPage(
                context: context,
                body: NewsBody(articles: articles),
                articles: articles);
          },
          toggleThrowNews: (articles, index) {
            return commonMainPage(
              context: context,
              body: NewsBody(articles: articles),
              index: index,
              articles: articles,
            );
          },
          error: (errorMessage, index) {
            return commonMainPage(
                context: context,
                body: ErrorBody(
                  errorMessage: errorMessage,
                  newIndex: index,
                ),
                index: index);
          },
        );
      },
    );
  }
}
