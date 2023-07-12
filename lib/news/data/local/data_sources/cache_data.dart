import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  Future<SharedPreferences> initShared() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> setBool({required String key, required bool value}) async {
    SharedPreferences prefs = await initShared();
    return await prefs.setBool(key, value);
  }

  Future<bool?> getBool({required String key}) async {
    SharedPreferences prefs = await initShared();
    return prefs.getBool(key);
  }
  setBoolIfNull() async{
    SharedPreferences prefs = await initShared();
    if( prefs.getBool('isBright')==null){
      prefs.setBool('isBright', true);
    }
  }
}
