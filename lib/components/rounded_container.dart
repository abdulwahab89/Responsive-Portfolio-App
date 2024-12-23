import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';

import '../utils/appTheme.dart';
import '../utils/colors/light_theme_colors.dart';
class RoundedContainer extends StatelessWidget{
 final String title;
  final double? height;
  final double? width;
   const RoundedContainer({
     required this.title,
     this.height,
     this.width,
     super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppTheme.isDarkMode(context)?DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor,
          ),
          height: height,
          width: width,
          child: Center(
            child: AutoSizeText(title,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        );
  }
}
