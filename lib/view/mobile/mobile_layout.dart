import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/view/user_info.dart';

import '../../components/custom_image_widget.dart';
import '../../components/header_body.dart';
class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
return LayoutBuilder(builder: (context,constraints){
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(
        child: CustomImageWidget(
          width: constraints.maxWidth*0.4,
          height: constraints.maxHeight*0.7,
        ),
      ),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal:constraints.maxHeight*0.01),
        child: HeaderBody(
          header: "Hi, I'm Wahab ", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          child: UserInfo(

            padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.1),
          )),
      ),

    ],

  );

});
  }
}
