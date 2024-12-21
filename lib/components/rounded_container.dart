import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

import '../utils/appTheme.dart';
import '../utils/colors/light_theme_colors.dart';
class RoundedContainer extends StatelessWidget{
  String title;
  double? height;
  double? width;
   RoundedContainer({
     required this.title,
     this.height,
     this.width,
     super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Apptheme.isDarkMode(context)?DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor,
          ),
          height: height,
          width: width,
          child: Center(
            child: Text(title,
            maxLines: 1,
            ),
          ),
        );
  }
}
