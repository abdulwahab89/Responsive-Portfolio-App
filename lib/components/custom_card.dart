import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
class CustomCard extends StatelessWidget {

String title;
String trailing;

   CustomCard({
     required this.trailing,
     required this.title,
     required this.texts,
     super.key});
List<String> texts=[];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return     Card (
        color: LightThemeColors.backgroundColor,
        child: ListTile(
          title:  SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const Spacer(),
                Text(trailing.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          subtitle:Column(
            children:texts.map((item) {
              return Row(
                children: [
                   Icon(Icons.circle, size: constraints.maxWidth*0.01,),
                  SizedBox(width: constraints.maxWidth*0.01,),
                  Flexible(
                    child: Text(item.toString(),
                    style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      );

    });

  }
}
