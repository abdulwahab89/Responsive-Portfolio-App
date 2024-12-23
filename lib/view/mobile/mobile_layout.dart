import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/data/data.dart';
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
    // double screenHeight=MediaQuery.of(context).size.height;
    // double screenWidth=MediaQuery.of(context).size.width;
return LayoutBuilder(builder: (context,constraints){
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: constraints.maxHeight*0.15,
      ),
      Expanded(
        flex: 2,
        child: CustomImageWidget(
          height: constraints.maxHeight*0.5,
          width: constraints.maxWidth*0.4,
        ),
      ),
      Expanded(
        flex: 2 ,
        child: HeaderBody(
          header: profileInfo.title!, body: profileInfo.intro!,
          child: UserInfo(
profileInfo: profileInfo,
           )),
      ),

    ],

  );

});
  }
}
