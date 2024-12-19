import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/view/about_me.dart';
import 'package:responsive_portfolio_app/view/skill_view.dart';

import '../utils/responsive_layout/responsive.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;

    return  Scaffold(
    appBar: Responsive.isMobile(context)? AppBar(
title:  const Text('Mobile'),
    ):AppBar(
      title: Padding(
        padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.04),
        child: Text('<AW/>',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      actions: [
TextButton(onPressed: (){}, child: Text('About',
style:Theme.of(context).textTheme.titleMedium,
)),

        TextButton(onPressed: (){}, child: Text('Work',
          style:Theme.of(context).textTheme.titleMedium,
        )),

        TextButton(onPressed: (){}, child: Text('Education',
          style:Theme.of(context).textTheme.titleMedium,
        )),

        TextButton(onPressed: (){}, child: Text('Contact',
          style:Theme.of(context).textTheme.titleMedium,
        )),
         SizedBox(
          height: screenHeight*0.03,
          child: const VerticalDivider(
            color: LightThemeColors.widgetColor,
          ),
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.dark_mode_outlined),
        ),
        Padding(
          padding:  EdgeInsets.all(screenWidth*0.01),
          child: ElevatedButton(onPressed: (){},
           child:Text('Download CV',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
color: LightThemeColors.backgroundColor,
          ),
          ),
          ),
        ),

              ],

    ),
      body:  SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height:screenHeight*0.7,
                      child: const Center(child: ResponsiveScreen())),
                  SizedBox(
                      height: screenHeight*1.6,
                      child: const AboutMe()),
SizedBox(

  height: screenHeight*0.9,
  child: Center(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical:screenHeight*0.1),
      child: const SkillView(),
    ),
  ),
)
                    ],
              ),

          ),
       );
    }
}

