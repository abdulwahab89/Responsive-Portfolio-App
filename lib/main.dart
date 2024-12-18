import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/utils/appTheme.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';
import 'package:responsive_portfolio_app/view/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1280, 720),
      minTextAdapt: true,
builder: (context,child){
return  MaterialApp(

  debugShowCheckedModeBanner: false,
  theme: ThemeData(

  iconTheme: IconThemeData(
  color: LightThemeColors.secondarywidgetColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
  backgroundColor:LightThemeColors.textColor,
  ),),
  appBarTheme: const AppBarTheme(
  color: Colors.transparent,
  elevation: 0,
  ),
  scaffoldBackgroundColor: LightThemeColors.backgroundColor,
  primaryColor: LightThemeColors.primaryColor,
  canvasColor: LightThemeColors.secondarywidgetColor,
  textTheme: Apptheme.getTheme(context),
  useMaterial3: true,
  ),
  home: Homescreen()
  );

  },
      );
  }
}

