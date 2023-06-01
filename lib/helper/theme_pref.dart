import 'package:shared_preferences/shared_preferences.dart';

class MyThemePreferences {
  static const String themeKey = "theme_key";

  seTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeKey, value);
  }
  getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeKey);
  }
  static const String platformKey = "theme_key";

  setPlatform(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(platformKey, value);
  }

  getPlatform() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(platformKey);
  }
}