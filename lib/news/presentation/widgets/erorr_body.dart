import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/injection/injection.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_cubit.dart';

class ErrorBody extends StatelessWidget {
  final String errorMessage;
  final int newIndex;

  const ErrorBody({super.key, required this.errorMessage,required this.newIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10.0,
          ),
          AutoSizeText(
            errorMessage,
            textAlign: TextAlign.center,
            maxLines: 4,
            style:Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(onPressed: () {
            getIt<NewsCubit>().toggleUsingNavBar(newIndex);
          }, child: const Text("try again")),
        ],
      ),
    );
  }
}
