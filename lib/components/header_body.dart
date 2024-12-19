import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/responsive_layout/responsive.dart';

class HeaderBody extends StatelessWidget {
  final String header;
  final String body;
  final EdgeInsets? padding;
  final Widget? child;

  const HeaderBody({
    required this.header,
    required this.body,
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
          child: SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Column(
              crossAxisAlignment: Responsive.isMobile(context)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Expanded(
                child: AutoSizeText(
                    header,
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 2,
                    textAlign: Responsive.isMobile(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
              ),

                Expanded(
                  child: AutoSizeText(
                    body,
                    style: Responsive.isMobile(context)
                        ? Theme.of(context).textTheme.bodySmall
                        : Theme.of(context).textTheme.bodyMedium,
                    textAlign: Responsive.isMobile(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
                ),
                Expanded(child: child ?? const SizedBox()),
              ],
            ),
          ),
        );
      },
    );
  }
}
