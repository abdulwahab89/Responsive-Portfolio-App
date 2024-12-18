import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../components/custom_image_widget.dart';
class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context,constraints){
      return    Container(
height: screenHeight*0.5,
        width: double.infinity,
        color: Colors.pink,
      );

    });
  }
}
