import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';

import '../utils/colors/light_theme_colors.dart';
class FooterView extends StatefulWidget {
  const FooterView({super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return  Column(
        children: [
Expanded(child: Column(
  children: [
    RoundedContainer(title: 'Get in touch',
    height: constraints.maxHeight*0.1,
      width: constraints.maxWidth*0.1,
    ),
    SizedBox(
      height: constraints.maxHeight*0.5,
      width: constraints.maxWidth*0.5,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.05),
        child: Center(child:AutoSizeText(
          "Looking for a developer who can code, debug, and make endless cups of coffee simultaneously? That’s me! Got a question, a project, or just want to discuss why tabs are better than spaces (or vice versa)? Don’t be shy—slide into my inbox, and let’s make something awesome happen!",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: LightThemeColors.secondarywidgetColor,
          ),
          textAlign: TextAlign.center,
        ),
        ),
      ),
    ),
    Text(
      "reachsagarshah@gmail.com",
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Colors.blue, // Optional: Add color for emphasis
        decoration: TextDecoration.underline, // Optional: Make it look clickable
      ),
      textAlign: TextAlign.center,
    ),
    Text(
      "+91 8980500565",
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
    ),
  ],
))
        ],
      );
    });
  }
}
