import 'package:flutter/cupertino.dart';

class ThemeSwitcher with ChangeNotifier{
bool _isDark=false;
get isDark=> _isDark;
setMode(){
  _isDark=!_isDark;
  notifyListeners();
}



}