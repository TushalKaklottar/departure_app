import 'package:flutter/cupertino.dart';
import '../helper/theme_pref.dart';

class SettingProvider extends ChangeNotifier {
  late bool _isDark;
  late MyThemePreferences _prefs;
  bool get isDark => _isDark;

  SettingProvider() {
    _isDark = false;
    _isSwitched = false;
    _prefs = MyThemePreferences();
    getPreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    _prefs.seTheme(value);
    notifyListeners();
  }
  getPreferences() async {
    _isDark = await _prefs.getTheme();
    _isPlatformChanged = await _prefs.getPlatform();
    notifyListeners();
  }
  late bool _isSwitched;
  bool get isSwitched => _isSwitched;

  set isSwitched(bool value) {
    _isSwitched = value;
    notifyListeners();
  }

  bool _isPlatformChanged = false;
  bool get isPlatformChanged => _isPlatformChanged;

  set isPlatformChanged(bool value) {
    _isPlatformChanged = value;
    _prefs.setPlatform(value);
    notifyListeners();
  }
}