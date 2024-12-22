import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/model/user_info.dart';
import 'package:responsive_portfolio_app/utils/data.dart';
import 'package:responsive_portfolio_app/view/user_info.dart';

import '../../components/custom_image_widget.dart';
import '../../components/header_body.dart';
class DesktopLayout extends StatefulWidget {
 ProfileInfo? profileInfo;
   DesktopLayout({
    required this.profileInfo,
    super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Expanded(
            flex: 3,
            child: HeaderBody(
              mainAxisAlignment: MainAxisAlignment.center,
              padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.1,horizontal: constraints.maxWidth*0.1  ,),
                header: 'Hi, ${widget.profileInfo!.title}', body: widget.profileInfo!.intro.toString(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.05),
                  child:  UserInfo(profileInfo: profileInfo,),
                )),
          ),
          Expanded(
            child: CustomImageWidget(
              padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.01),
              height: constraints.maxHeight*0.5,
              width: constraints.maxWidth*0.4,
            ),
          )
        ],
      );

    });
      }
}
