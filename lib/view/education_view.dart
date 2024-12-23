import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/components/custom_card.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/data/data.dart';
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
        return SizedBox(
          height: constraints.maxHeight,
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height:constraints.maxHeight*0.05,
              ),
              RoundedContainer(
                title: 'Education',

                height: constraints.maxHeight*0.05,
                width: constraints.maxWidth*0.13,
              ),
              Center(
                child: SizedBox(
                  height: constraints.maxHeight*0.15,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.01),
                    child: Text("The relevant courses, I have attended:",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: LightThemeColors.secondarywidgetColor,
                      ),
                    ),
                  ),
                ),
              ),
          Expanded(
            child: Column(
                        children: List.generate(educationList.length, (index){
            var educationItem=educationList[index];
            return Expanded(child: CustomCard(trailing:educationItem.dateCompleted?? "No date", title: educationItem.courseName?? "No course", texts: educationItem.details??["No details"]));
                        })
                      ),
          )
            ],
          ),
        );
      },
    );
  }
}
