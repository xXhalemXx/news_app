import 'package:flutter/material.dart';
import 'package:news_app/core/injection/injection.dart';
import 'package:news_app/core/reusable_component/common_component.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_cubit.dart';

class NewsSearchDelegate extends SearchDelegate {
  List<Articles> articles;

  NewsSearchDelegate({required this.articles});

  /*
  @override
  ThemeData appBarTheme(BuildContext context) {
    return getIt<ModeCubit>().isBright?
    ThemeData(
      colorScheme:const ColorScheme.light(background: Colors.white) ,
      inputDecorationTheme:  InputDecorationTheme(
        hintStyle: Theme.of(context).textTheme.bodySmall,
      ),
    ):
    ThemeData(
      colorScheme:ColorScheme.dark(background: Colors.black) ,
      inputDecorationTheme:  InputDecorationTheme(
        hintStyle: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }*/


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Articles> matchItems = [];
    for (var article in articles) {
      if (article.title != null) {
        if (article.title!.toLowerCase().contains(query.toLowerCase())) {
          matchItems.add(article);
        }
      }
    }
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) => commonItem(matchItems[index], context),
      separatorBuilder: (_, index) => Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
      itemCount: matchItems.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Articles> matchItems = [];
    for (var article in articles) {
      if (article.title != null) {
        if (article.title!.toLowerCase().contains(query.toLowerCase())) {
          matchItems.add(article);
        }
      }
    }
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (ctx, index) => commonItem(matchItems[index], context),
      separatorBuilder: (ctx, index) => Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
      itemCount: matchItems.length,
    );
  }
}
