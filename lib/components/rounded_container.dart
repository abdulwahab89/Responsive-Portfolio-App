import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

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
            color: LightThemeColors.widgetColor,
          ),
          height: height,
          width: width,
          child: Center(
            child: Text(title,
            style:Theme.of(context).textTheme.bodySmall,
            
            ),
          ),
        );
  }
}
