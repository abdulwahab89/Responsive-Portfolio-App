import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_portfolio_app/logic/url_launcher.dart';
import 'package:responsive_portfolio_app/model/user_info.dart';
import 'package:responsive_portfolio_app/utils/data.dart';
class UserInfo extends StatefulWidget {
  final EdgeInsets? padding;
ProfileInfo? profileInfo;
    UserInfo({
    required this.profileInfo,
    this.padding, super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Wrap(
                  spacing: constraints.maxWidth*0.001,
                  children: [
                     Icon(Icons.location_on_outlined,size:constraints.maxHeight*0.13),
                    Text(
                      profileInfo.location!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
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
              Flexible(
                child: Wrap(
                  children: [
                    IconButton(
                      onPressed: () => UrlLauncher.navigateUrl(profileInfo.socialUrls[Platforms.gitHubUrl]!,context),
                      icon:  FaIcon(FontAwesomeIcons.github, size: Theme.of(context).textTheme.bodyLarge!.fontSize),
                      tooltip: "GitHub",
                    ),
                    IconButton(
                      onPressed: () => UrlLauncher.navigateUrl(profileInfo.socialUrls[Platforms.twitterUrl]!,context ),
                      icon:  FaIcon(FontAwesomeIcons.twitter, size: Theme.of(context).textTheme.bodyLarge!.fontSize),
                      tooltip: "Twitter",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:  FaIcon(FontAwesomeIcons.whatsapp, size: Theme.of(context).textTheme.bodyLarge!.fontSize),
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
