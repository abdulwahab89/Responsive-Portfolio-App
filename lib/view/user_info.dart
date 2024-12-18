import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
class UserInfo extends StatefulWidget {
   UserInfo({
    this.padding,
    super.key});
  EdgeInsets? padding;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return         Padding(
      padding: widget.padding?? EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.location_on_outlined,
              ),
              Text(" Hyderabad,PK",
                style: Theme.of(context).textTheme.bodySmall,
              ),

            ],),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              // Lottie.asset('animations/live_blink.json')
                  Text(" Available for projects",

                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],),
          Padding(
            padding:  EdgeInsets.symmetric(vertical:10.h),
            child: Row(children: [
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.github)

              ),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter)),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.whatsapp)),




            ],),
          )
        ],
      ),
    );

  }
}
