import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
import 'package:responsive_portfolio_app/model/user_info.dart';
import 'package:responsive_portfolio_app/data/data.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

import '../components/custom_image_widget.dart';
import '../components/header_body.dart';
class AboutMe extends StatefulWidget {
  final ProfileInfo? profileInfo;
   const AboutMe({
    required this.profileInfo,
    super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return    Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.05),
            child: Center(
              child: RoundedContainer(

                height: constraints.maxHeight * 0.05,
                width: constraints.maxWidth * 0.1,

                title: 'About me',),
            ),
          ),
          Responsive.isDesktop(context)?Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageWidget(
                    height: constraints.maxHeight*0.6,
                    width: constraints.maxWidth*0.3,
                  left: constraints.maxWidth*0.03,
                    right: -constraints.maxWidth*0.01,
                   ),
                  SizedBox(width: constraints.maxWidth*0.1,),
                  SizedBox(
                    height: constraints.maxHeight*0.7,
                    width: constraints.maxWidth*0.3,
                    child: HeaderBody(
                      headerStyle: Theme.of(context).textTheme.headlineSmall,
                      header: "Curious about me? Here you have it:",
                      body: profileInfo.about!,
                     ),
                  )


                ],
              ),
            ),
          ):Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            
                Expanded(
                  child: CustomImageWidget(
                    height: constraints.maxHeight*0.1,
                    width: constraints.maxWidth*0.5,
                  ),
                ),
            
                 Flexible(child: HeaderBody(
                  header: "Curious about me? Here you have it:", body: profileInfo.about!,
                )),
              ],
            ),
          )
        ],
      );

    });
  }
}
