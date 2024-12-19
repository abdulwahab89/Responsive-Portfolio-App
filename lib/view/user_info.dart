import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class UserInfo extends StatefulWidget {
  final EdgeInsets? padding;

  const UserInfo({this.padding, super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Wrap(
                  spacing: constraints.maxWidth*0.001,
                  children: [
                     Icon(Icons.location_on_outlined,size:constraints.maxHeight*0.13),
                    Text(
                      "Hyderabad, PK",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: constraints.maxHeight*0.001),
              Expanded(
                child: Wrap(
                  spacing: constraints.maxWidth*0.001,
                  children: [
                    Text(
                      "Available for projects",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: constraints.maxHeight*0.001),
              Expanded(
                child: Wrap(
                  spacing: constraints.maxWidth*0.01,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:  FaIcon(FontAwesomeIcons.github, size: constraints.maxHeight*0.2),
                      tooltip: "GitHub",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:  FaIcon(FontAwesomeIcons.twitter, size: constraints.maxHeight*0.2),
                      tooltip: "Twitter",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:  FaIcon(FontAwesomeIcons.whatsapp, size: constraints.maxHeight*0.2),
                      tooltip: "WhatsApp",
                    ),
                  ],
                ),
              ),
            ],
          ),
      );
    });


  }
}
