import 'package:shared_preferences/shared_preferences.dart';
import '../../components/constants.dart';

class CacheHelper {
  static late SharedPreferences _sp;

  static init() async {
    _sp = await SharedPreferences.getInstance();
  }

  static Future<bool> setMode(bool isDark) async {
    return await _sp.setBool(MODE, isDark);
  }

  static bool getMode() {
    return _sp.getBool(MODE) ?? false;
  }
}