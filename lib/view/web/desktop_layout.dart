import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/view/user_info.dart';

import '../../components/custom_image_widget.dart';
import '../../components/header_body.dart';
class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context,constraints){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 3,
            child: HeaderBody(
              child: UserInfo(),
                padding: EdgeInsets.symmetric(vertical:constraints.maxHeight*0.2,horizontal: constraints.maxWidth*0.1),
                header: "Hi, I'm Wahab ", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),

          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: constraints.maxHeight*0.2),
                  child: CustomImageWidget(
                    height: constraints.maxHeight*0.4,
                    width: constraints.maxWidth*0.2,
                  ),),
          ),
        ],
      );

    });
      }
}
