import 'package:flutter/material.dart';
import 'package:news_app/core/reusable_component/common_component.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';

class NewsBody extends StatelessWidget {
  final List<Articles> articles;
  const NewsBody({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (ctx, index) => commonItem(articles[index], context),
      separatorBuilder: (ctx, index) => Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
      itemCount: articles.length,
    );
  }


}
