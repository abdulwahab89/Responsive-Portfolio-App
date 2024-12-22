import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio_app/logic/theme_switcher.dart';
import 'package:responsive_portfolio_app/model/user_info.dart';
import 'package:responsive_portfolio_app/utils/appTheme.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/data.dart';
import 'package:responsive_portfolio_app/view/homeScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeSwitcher(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          themeMode: Provider.of<ThemeSwitcher>(context).isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          darkTheme: ThemeData(
            textTheme: Apptheme.getTheme(context,true),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: DarkThemeColors.defaultColor,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            cardColor: DarkThemeColors.darkColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelSmall,
                backgroundColor: DarkThemeColors.primaryTextColor,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            brightness: Brightness.light,
            iconTheme: const IconThemeData(
              color: LightThemeColors.secondarywidgetColor,
            ),
            cardColor: Colors.red,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelSmall,
                backgroundColor: LightThemeColors.textColor,
              ),
            ),
            appBarTheme: const AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
            ),
            scaffoldBackgroundColor: LightThemeColors.backgroundColor,

            textTheme: Apptheme.getTheme(context, false),
            useMaterial3: true,

          ),
          home:  Homescreen(profileInfo: profileInfo,),
        );
      },
    );
  }
}
