import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/components/custom_card.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import '../components/rounded_container.dart';
class EducationView extends StatefulWidget {
  const EducationView({super.key});

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(

      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RoundedContainer(
                height: constraints.maxHeight * 0.05,
                width: constraints.maxWidth * 0.1,
                title: 'Education',
              ),
            ),
            Center(child: Text("The relevant courses, I have attended:",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: LightThemeColors.secondarywidgetColor,
              ),
            )),

        Expanded(
          child: Column(
            children: [
          
              Flexible(
                child: CustomCard(
                    trailing: "2021-2025",
                    title: "Mobile Application Development",
                          
                    texts: ["lorem empsum"]),
              ),
              Flexible(
                child: CustomCard(
                    trailing: "2021-2025",
                    title: "Mobile Application Development",
                    texts: ["lorem empsum",
                      "lorem empsum",
                      "lorem empsum",
                      "lorem empsum",
                      "lorem empsum",
                    ]),
              ),
          
          
              Flexible(
                child: CustomCard(
                    trailing: "2021-2025",
                    title: "Mobile Application Development",
                    texts: ["lorem empsum",
                      "lorem empsum",
                      "lorem empsum",
                      "lorem empsum",
                          
                    ]),
              ),
            ],
          ),
        ),

          ],
        );
      },
    );
  }
}
