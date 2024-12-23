import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';
import 'package:responsive_portfolio_app/data/data.dart';
import '../components/card_show.dart';
import '../utils/colors/light_theme_colors.dart';

class WorkView extends StatelessWidget {
  WorkView({super.key});
  final List<String> imageUrls = List.generate(12, (index) {
    return 'images/techs/images(${index + 1}).png';
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.01 ),
                child: RoundedContainer(
                  height: constraints.maxHeight * 0.03,
                  width: constraints.maxWidth * 0.1,
                  title: "Work",
                ),
              ),
            ),
            Flexible(
              child: Text(
                "Here's a view of my projects:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: LightThemeColors.secondarywidgetColor,
                ),
              ),
            ),

            Expanded(flex: 4,
              child: CardShow(
                imageAddresses: projects[0].projectUrls??[""],
                placeImageFirst: true,
                title: projects[0].projectTitle.toString(),
                description: projects[0].description.toString()
               ),
            ),
            Expanded(flex: 4,
              child: CardShow(
                imageAddresses: projects[1].projectUrls??[""],
                placeImageFirst: true,
                title: projects[1].projectTitle??" Not given",
                description: projects[1].description??"Not given",
                ),
            ),
            Expanded(flex: 4,
              child: CardShow(
                imageAddresses: projects[2].projectUrls??[""],
                placeImageFirst: true,
                title: projects[2].projectTitle.toString(),
                description: projects[2].description.toString(),
                ),
            ),


          ],
        );
      },
    );
  }
}