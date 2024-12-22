import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
import 'package:flutter/services.dart';  // Import the services package for clipboard functionality
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';

import '../logic/copy_details.dart';
import '../utils/appTheme.dart';
import '../utils/colors/light_theme_colors.dart';

class FooterView extends StatefulWidget {
  const FooterView({super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedContainer(
                  title: 'Get in touch',
                  height: constraints.maxHeight * 0.1,
                  width: constraints.maxWidth * 0.8,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.4,
                  width: constraints.maxWidth * 0.8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: constraints.maxHeight * 0.05,
                    ),
                    child: Center(
                      child: AutoSizeText(
                        "Looking for a developer who can code, debug, and make endless cups of coffee simultaneously? That’s me! Got a question, a project, or just want to discuss why tabs are better than spaces (or vice versa)? Don’t be shy—slide into my inbox, and let’s make something awesome happen!",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: LightThemeColors.secondarywidgetColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => copyToClipboard("abdulwahablaghari6@gmail.com",context),
                        child: Row(
                          children: [
                            Text(
                              "abdulwahablaghari6@gmail.com ",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const Icon(
                              Icons.copy,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20), // Adding space between the email and phone number
                      GestureDetector(
                        onTap: () => copyToClipboard("+92 3083598729",context),
                        child: Row(
                          children: [
                            Text(
                              "+92 3083598729 ",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Icon(
                              Icons.copy,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.02),
            child: Container(
              color: Apptheme.isDarkMode(context)?DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor.withOpacity(0.3),
              height: constraints.maxHeight * 0.2,
              child: Center(
 child: Text("© 2024 | Designed and coded with ❤️ by A Wahab️",

 style: Theme.of(context).textTheme.labelLarge,
 ),
      ),
      ),
            ),

        ],
      );
    });
  }
}
