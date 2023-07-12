import 'package:bloc/bloc.dart';
import 'package:news_app/core/injection/injection.dart';
import 'package:news_app/news/data/local/data_sources/cache_data.dart';
import 'package:news_app/news/presentation/manager/mode_management/mode_states.dart';

//management
class ModeCubit extends Cubit<ModeStates> {
  ModeCubit() : super(ReloadModeState());
  bool isBright = true;

  void changeMode() async {
    isBright = !isBright;
    await getIt<CacheData>().setBool(key: 'isBright', value: isBright);
    emit(ReloadModeState());
  }

  setFirstOpen() async {
    bool? savedBool = await getIt<CacheData>().getBool(key: 'isBright');
    isBright = savedBool!;
  }
}
