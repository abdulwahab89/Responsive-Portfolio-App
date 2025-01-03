import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/data/data.dart';

import '../../view/mobile/mobile_layout.dart';
import '../../view/web/desktop_layout.dart';
class Responsive{
  static bool isMobile(BuildContext context){
    return MediaQuery.of(context).size.width<mobileBreakpoint;
  }
  static bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width>mobileBreakpoint;
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if (Responsive.isMobile(context)) {
        return const MobileLayout();
      } else {
        return  DesktopLayout(profileInfo:profileInfo,);
      }
    });
  }
}

 const int mobileBreakpoint = 900;
