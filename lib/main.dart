import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/injection/injection.dart';
import 'package:news_app/core/reusable_component/theme_data.dart';
import 'package:news_app/news/data/local/data_sources/cache_data.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_cubit.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_states.dart';
import 'package:news_app/news/presentation/manager/news_state_management/news_cubit.dart';
import 'package:news_app/news/presentation/pages/news_main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getItSetup();
  await getIt<CacheData>().setBoolIfNull();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsCubit>(
          create: (_) => getIt<NewsCubit>()..firstOpen(),
        ),
        BlocProvider<ModeCubit>(
          create: (_) => getIt<ModeCubit>()..setFirstOpen(),
        ),
      ],
      child: BlocBuilder<ModeCubit, ModeStates>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightThemData(),
            darkTheme: darkThemData(),
            themeMode: getIt<ModeCubit>().isBright
                ? ThemeMode.light
                : ThemeMode.dark,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
