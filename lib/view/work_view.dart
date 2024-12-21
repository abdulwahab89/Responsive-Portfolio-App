import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/components/rounded_container.dart';

import '../components/card_show.dart';
import '../utils/colors/light_theme_colors.dart';
class WorkView extends StatelessWidget {
   WorkView({super.key});
  List<String> imageUrls = List.generate(12, (index) {
    return 'images/techs/images(${index + 1}).png';
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.01),
            child: RoundedContainer(
                height:constraints.maxHeight*0.03,
                width:constraints.maxWidth*0.1,
                title: "Work"),
          ),
          Text("Here's a view of my projects:",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: LightThemeColors.secondarywidgetColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: CardShow(
                  imageAddresses: imageUrls,
                  placeImageFirst: true,
                  title: 'Wiggle',
                  description: "It is a good event",
                  techs: const ["NodeJS",
                            "Flutter",
                            "Dart",
                            "HTML"
                  ],
                ),
              ),
              Flexible(
                child: CardShow(
                  imageAddresses: imageUrls,
                  title: 'Wiggle',
                  description: "A platform for accessing real-time open banking and energy data to help you grow your business, backed with scalable back-end infrastructure.",
                  techs: const ["NodeJS",
                          "Flutter",
                          "Dart",
                          "HTML",
                  ],
                ),
              ),
              Flexible(
                child: CardShow(

                  imageAddresses: imageUrls,
                  placeImageFirst: true,
                  title: 'Wiggle',
                  description: "A platform for accessing real-time open banking and energy data to help you grow your business, backed with scalable back-end infrastructure.",

                  techs: const ["NodeJS",
                    "Flutter",
                    "Dart",
                    "HTML"
                  ],
                ),
              ),
              Expanded(
                child: CardShow(

                  imageAddresses: imageUrls,

                  title: 'Wiggle',
                  description: "A platform for accessing real-time open banking and energy data to help you grow your business, backed with scalable back-end infrastructure.",

                  techs: const ["NodeJS",
                    "Flutter",
                    "Dart",
                    "HTML"
                  ],
                ),
              ),
            
            ],
            ),
          ),
        ],
      );
    });
  }
}
