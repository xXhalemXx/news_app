import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/injection/injection.dart';
import 'package:news_app/core/reusable_component/search_delegat.dart';
import 'package:news_app/news/data/remote/models/news_model.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_cubit.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_states.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_cubit.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_states.dart';

Scaffold commonMainPage(
    {required BuildContext context,
    required Widget body,
    int? index,
    List<Articles>? articles}) {
  print(articles);
  return Scaffold(
    appBar: mainPageAppBar(index, context, articles??[]),
    body: body,
    bottomNavigationBar: BottomNavigationBar(
      items: getIt<NewsCubit>().iconsList,
      currentIndex: index ?? 0,
      onTap: (newIndex) {
        getIt<NewsCubit>().toggleUsingNavBar(newIndex);
      },
    ),
  );
}

AppBar mainPageAppBar(int? index, context, List<Articles> articles) {
  return AppBar(
    title: Text(getIt<NewsCubit>().appBarTitles[index ?? 0]),
    actions: [
      BlocBuilder<NewsCubit, NewsStates>(builder: (context, state) {
        if (state == NewsStates.firsPageData(articles) ||
            state == NewsStates.toggleThrowNews(articles, index??0)) {
          return IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: NewsSearchDelegate(articles: articles));
            },
          );
        } else {
          return const SizedBox();
        }
      }),
      BlocBuilder<ModeCubit, ModeStates>(
          builder: (c, _) => IconButton(
                onPressed: () {
                  getIt<ModeCubit>().changeMode();
                },
                icon: getIt<ModeCubit>().isBright
                    ? const Icon(Icons.brightness_4_outlined)
                    : const Icon(Icons.brightness_5_outlined),
              )),
    ],
  );
}

Widget commonItem(Articles article, context) => InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 120.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              newsImage(article),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: newsDescription(article, context),
              ),
            ],
          ),
        ),
      ),
    );

Widget newsImage(Articles article) {
  return Container(
    width: 120.0,
    height: 120.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10.0,
      ),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Image(
      image: NetworkImage(article.image ??
          'https://www.logaster.com/blog/wp-content/uploads/2020/03/1010.png'),
      fit: BoxFit.cover,
    ),
  );
}

Widget newsDescription(Articles article, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        article.title ?? 'no title 😢',
        style: Theme.of(context).textTheme.bodyMedium,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      const Spacer(
        flex: 1,
      ),
      Text(
        article.source!.name ?? 'no name 😢',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      const SizedBox(
        height: 5.0,
      ),
      Text(
        article.publishedAt ?? 'no date 😢',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ],
  );
}


