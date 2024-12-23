
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../utils/appTheme.dart';

class CardShow extends StatelessWidget {
  final bool placeImageFirst;
  final List<String> imageAddresses;

  final String title;
  final String description;

  const CardShow({
    required this.description,
    this.placeImageFirst = false,
    required this.imageAddresses,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.05,vertical: constraints.maxHeight*0.05),
        child: Container(
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: AppTheme.isDarkMode(context)?DarkThemeColors.primaryDarkColor:LightThemeColors.secondarywidgetColor,
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 4),
              )
            ],
            borderRadius: BorderRadius.circular(25),
           ),

          child: Row(
            children: [
              Expanded(child: Container(
                decoration:  BoxDecoration(

                  color: AppTheme.isDarkMode(context)? DarkThemeColors.secondarywidgetColor:LightThemeColors.widgetColor.withOpacity(0.3),

                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
                ),
child: CarouselSlider(

  items: imageAddresses.map((imageUrl) {
    return Container(
      height: constraints.maxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.contain ,
        ),
      ),
    );
  }).toList(),
  options: CarouselOptions(
    enlargeFactor: 4,
    height: constraints.maxHeight,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayAnimationDuration:
    const Duration(milliseconds: 800),
    pauseAutoPlayOnManualNavigate: true,
    scrollPhysics: const BouncingScrollPhysics(),
  ),
),
              )),
              Expanded(child: Container(
decoration:  BoxDecoration(

    color: AppTheme.isDarkMode(context)? DarkThemeColors.widgetColor:LightThemeColors.widgetColor,

    borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
),
                child: SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: ListTile(
                      title: Text(title),
                      subtitle: Text(description),

                    )),
              )),
            ],
          ),
        ),
      );
    });
  }
}