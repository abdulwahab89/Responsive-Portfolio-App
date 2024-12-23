import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../utils/appTheme.dart';
class CustomCard extends StatelessWidget {
final String title;
final String trailing;

   const CustomCard({
     required this.trailing,
     required this.title,
     required this.texts,
     super.key});
final List<String> texts;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return     Card(
        elevation: 10,
        shadowColor: AppTheme.isDarkMode(context)? Colors.blue   : DarkThemeColors.widgetColor,
        color: AppTheme.isDarkMode(context)? null:LightThemeColors.backgroundColor,
        child: ListTile(
          leading: const FaIcon(FontAwesomeIcons.book),
          title:  Text(title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
          trailing:  Text(trailing,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                spacing: constraints.maxWidth*0.01,
                children: List.generate(texts.length, (index){
                  return Text("*${texts[index]}",
                  style: Theme.of(context).textTheme.labelSmall,
                  );
                })
              )),
        ),
      );

    });

  }
}
