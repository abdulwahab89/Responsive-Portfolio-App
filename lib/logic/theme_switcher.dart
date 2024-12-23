import 'package:flutter/cupertino.dart';

class ThemeSwitcher with ChangeNotifier{
bool _isDark=true;
get isDark=> _isDark;
setMode(){
  _isDark=!_isDark;
  notifyListeners();

}



}