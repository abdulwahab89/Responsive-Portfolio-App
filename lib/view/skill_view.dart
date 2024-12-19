import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: constraints.maxHeight*0.1),
                child: RoundedContainer(
                  height: constraints.maxHeight * 0.05,
                  width: constraints.maxWidth * 0.1,
                  title: 'Skills',
                ),
              ),
            ),

            Expanded(
              child: Wrap(
                children: List.generate(12, (index) {
                      return HoverContainer(
                        padding: EdgeInsets.all(constraints.maxHeight*0.05),
                    hoverPadding:  EdgeInsets.all(constraints.maxHeight*0.01),
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.3,
                      decoration: const BoxDecoration(),
                      child: Image.asset('images/techs/images(${index + 1}).png'),
                      );
                      }),
                      ),
            ),


           ],
        );
      },
    );
  }
}
