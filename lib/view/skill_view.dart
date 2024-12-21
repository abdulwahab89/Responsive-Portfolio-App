import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

import '../components/rounded_container.dart';
class SkillView extends StatefulWidget {
  const SkillView({super.key});

  @override
  State<SkillView> createState() => _SkillViewState();
}

class _SkillViewState extends State<SkillView> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(

      builder: (context, constraints) {
        return SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.01),
                  child: RoundedContainer(
                    height: constraints.maxHeight * 0.05,
                    width: constraints.maxWidth * 0.1,
                    title: 'Skills',
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.1),
                child: Center(child: Text("The skills, tools and technologies, I have used:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: LightThemeColors.secondarywidgetColor,
                ),
                )),
              ),
              Center(
                child: Wrap(
                  children: List.generate(12, (index) {
                    return HoverContainer(
                      padding: EdgeInsets.all(constraints.maxHeight * 0.03),
                      hoverPadding: EdgeInsets.all(constraints.maxHeight * 0.02),
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth*0.2,
                      decoration: const BoxDecoration(),
                      child: Image.asset('images/techs/images(${index + 1}).png'),
                    );
                  }),
                ),
              )

            ],
          ),
        );
      },
    );
  }
}
