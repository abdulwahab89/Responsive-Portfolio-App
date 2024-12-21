import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import '../utils/responsive_layout/responsive.dart';

class HeaderBody extends StatelessWidget {
  final String header;
  final String body;
  final EdgeInsets? padding;
  final Widget? child;
final TextStyle? headerStyle;
final MainAxisAlignment? mainAxisAlignment;
  const HeaderBody({
    this.mainAxisAlignment,
    required this.header,
    required this.body,
    this.headerStyle,
    this.padding,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: Responsive.isMobile(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
            children: [Flexible(
              child: AutoSizeText(
                  header,
                  style: headerStyle??Theme.of(context).textTheme.headlineLarge,
                  maxLines: 1,
                  textAlign: Responsive.isMobile(context)
                      ? TextAlign.center
                      : TextAlign.left,
                ),
            ),
              SizedBox(height: constraints.maxHeight*0.01),
              Flexible(
                child: AutoSizeText(
                  body,
                  style: Responsive.isMobile(context)
                      ? Theme.of(context).textTheme.bodyLarge
                      : Theme.of(context).textTheme.bodyLarge,
                  textAlign: Responsive.isMobile(context)
                      ? TextAlign.center
                      : TextAlign.justify,
                ),
              ),
              child!=null? Flexible(child: child!) :const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
