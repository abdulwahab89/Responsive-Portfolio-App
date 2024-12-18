import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
class CustomImageWidget extends StatelessWidget {
  double? height;
  double? width;
   CustomImageWidget({
    this.height,
    this.width,
    super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
      Container(
        height: height,//constraints.maxHeight*0.4,
        width:width,
      //constraints.maxWidth*0.5,
        decoration: BoxDecoration(
          color: LightThemeColors.widgetColor,
          borderRadius: BorderRadius.zero,
          border: Border.all(
            color: MediaQuery.of(context).platformBrightness==Brightness.dark?
              LightThemeColors.backgroundColor:LightThemeColors.textColor,
          )
        ),

      ),
      Positioned(
      top:-20,
        left: -40,
        bottom: 40,
        child: Container(
      height: height,
          width: width,
        decoration: BoxDecoration(
        color: LightThemeColors.backgroundColor,
        border: Border.all(
          width: 5.0,
          color: LightThemeColors.backgroundColor,
        ),

            image: const DecorationImage(image: AssetImage('images/profile.jpeg'),
    fit: BoxFit.cover,
    )
      ),
        ),
      )

        ],
      );
    });
  }
}
