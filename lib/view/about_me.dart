import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

import '../components/custom_image_widget.dart';
import '../components/header_body.dart';
class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

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
                      body: '''
                                      Contrary to popular belief, Lorem Ipsum is not simply random text. 
                                      It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, "consectetur", from a Lorem Ipsum passage. Going through the citations of the word in classical literature, he discovered the undoubtable source.
                                  
                                      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                  
                                      The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                      ''',
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.1),
                    child: CustomImageWidget(
                      height: constraints.maxHeight*0.1,
                      width: constraints.maxWidth*0.1,
                    ),
                  ),
                ),
            
                const Flexible(child: HeaderBody(
                  header: "Curious about me? Here you have it:", body: '''
                  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                  
                  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                  ''',
                )),
              ],
            ),
          )
        ],
      );

    });
  }
}
