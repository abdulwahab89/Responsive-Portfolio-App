import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../utils/appTheme.dart';
class CustomImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final double? left,right;
   const CustomImageWidget({
    this.height,
     this.left,this.right,
    this.width,
     this.padding,
    super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: padding??EdgeInsets.zero,
        child: Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: AppTheme.isDarkMode(context)?DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor,
                borderRadius: BorderRadius.zero,
                border: Border.all(
                  color:
                  AppTheme.isDarkMode(context)
                      ?  LightThemeColors.textColor:LightThemeColors.backgroundColor
                  ,),
              ),
            ),
            Positioned(
              top: -constraints.maxHeight * 0.05,
              left: left??-constraints.maxHeight * 0.1,
              right: right?? (padding?.horizontal ?? 0) / 2,
              bottom: 40,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: LightThemeColors.backgroundColor,
                  border: Border.all(
                    width: 5.0,
                    color: AppTheme.isDarkMode(context)
                        ?  LightThemeColors.textColor:LightThemeColors.backgroundColor
                        ,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/profile.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }}
