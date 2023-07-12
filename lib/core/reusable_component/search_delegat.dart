import 'package:flutter/material.dart';
import 'package:news_app/core/reusable_component/common_component.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';

class NewsSearchDelegate extends SearchDelegate {
  List<Articles> articles;

  NewsSearchDelegate({required this.articles});

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
