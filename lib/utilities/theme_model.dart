import 'package:clans/utilities/theme_preferences.dart';
import 'package:flutter/cupertino.dart';

class ThemeModel extends ChangeNotifier{
  bool _isDark = false;
  ThemePreferences _pref = ThemePreferences();
  bool get isDark => _isDark;

  ThemeModel(){
    _isDark = false;
    _pref = ThemePreferences();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _pref.getTheme();
    notifyListeners();
  }

  set isDark(bool value){
    _isDark = value;
    _pref.setTheme(value);
    notifyListeners();
  }
}