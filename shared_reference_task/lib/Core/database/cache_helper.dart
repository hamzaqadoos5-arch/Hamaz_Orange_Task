import 'package:shared_preferences/shared_preferences.dart';


class CacheHelper {
  static late SharedPreferences sharedPreferences;

  
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) return sharedPreferences.setBool(key, value);
    if (value is String) return sharedPreferences.setString(key, value);
    if (value is int) return sharedPreferences.setInt(key, value);
    if (value is double) return sharedPreferences.setDouble(key, value);
    throw UnsupportedError('Unsupported type: ${value.runtimeType}');
  }

  static dynamic getData(String key) => sharedPreferences.get(key);
  static String? getString(String key) => sharedPreferences.getString(key);
  static bool? getBool(String key) => sharedPreferences.getBool(key);
  static int? getInt(String key) => sharedPreferences.getInt(key);

  static Future<bool> removeData(String key) => sharedPreferences.remove(key);
  static Future<bool> clearData() => sharedPreferences.clear();
  static bool containsKey(String key) => sharedPreferences.containsKey(key);
}