import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../utils/appTheme.dart';

class CardShow extends StatelessWidget {
  final bool placeImageFirst;
  final List<String> imageAddresses;
  final List<String> techs;
  final String title;
  final String description;

  CardShow({
    required this.description,
    this.placeImageFirst = false,
    required this.imageAddresses,
    required this.techs,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        color: Apptheme.isDarkMode(context)? null:LightThemeColors.backgroundColor,
        elevation: 10,
        shadowColor: LightThemeColors.widgetColor,
        child: Row(
          children: placeImageFirst
              ? [
            Expanded(
              child: Center(
                child: CarouselSlider(

                  items: imageAddresses.map((imageUrl) {
                    return Container(
                  height: constraints.maxHeight*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.contain,
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
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Expanded(
              child: AutoSizeText(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            Expanded(
              flex:3,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.01),
                child: Wrap(
                  runSpacing: constraints.maxHeight * 0.05,
                  spacing: constraints.maxWidth * 0.05,
                  alignment: WrapAlignment.start,
                  children: List.generate(techs.length, (index) {
                    return RoundedContainer(
                      height: constraints.maxHeight * 0.1,

                      width: constraints.maxWidth * 0.05,
                      title: techs[index],
                    );
                  }),
                ),
              ),
            ),

          ]
              : [
            Expanded(
              child: Text(
                  title,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Expanded(
              child: AutoSizeText(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            Expanded(
              flex:3,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.01),
                child: Wrap(
                  runSpacing: constraints.maxHeight * 0.05,
                  spacing: constraints.maxWidth * 0.05,
                  alignment: WrapAlignment.start,
                  children: List.generate(techs.length, (index) {
                    return RoundedContainer(
                      height: constraints.maxHeight * 0.1,

                      width: constraints.maxWidth * 0.05,
                      title: techs[index],
                    );
                  }),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: CarouselSlider(
                  items: imageAddresses.map((imageUrl) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.contain,
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
              ),
            ),

          ],
        ),
      );
    });
  }
}
