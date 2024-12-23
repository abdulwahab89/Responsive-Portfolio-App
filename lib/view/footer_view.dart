import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
// Import the services package for clipboard functionality
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';

import '../logic/copy_details.dart';
import '../utils/appTheme.dart';
import '../utils/colors/light_theme_colors.dart';

class FooterView extends StatefulWidget {
  final String email;
  final String  phNumber;
   const FooterView({
    required this.email,
    required this.phNumber,
    super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
            title: 'Get in touch',

            height: constraints.maxHeight * 0.1,
            width: constraints.maxWidth * 0.8,
          ),

          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:50.sp,vertical: 10.sp),
              child: Center(
                child: AutoSizeText(
                  "Looking for a developer who can code, debug, and make endless cups of coffee simultaneously? That’s me! Got a question, a project, or just want to discuss why tabs are better than spaces (or vice versa)? Don’t be shy—slide into my inbox, and let’s make something awesome happen!",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: LightThemeColors.secondarywidgetColor,
                    ),
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      widget.email,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      onPressed: () => copyToClipboard(widget.email, context),
                      icon: const Icon(Icons.copy_outlined),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      widget.phNumber,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      onPressed: () => copyToClipboard(widget.phNumber, context),
                      icon: const Icon(Icons.copy_outlined),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Container(
              color: AppTheme.isDarkMode(context)?DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor.withOpacity(0.3),
              child: Center(
                         child: Text("© 2024 | Coded in Flutter with ❤️ by A Wahab️",

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
