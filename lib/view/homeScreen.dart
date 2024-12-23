import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio_app/components/hover_text.dart';
import 'package:responsive_portfolio_app/logic/section_navigator.dart';
import 'package:responsive_portfolio_app/logic/theme_switcher.dart';
import 'package:responsive_portfolio_app/logic/url_launcher.dart';
import 'package:responsive_portfolio_app/model/user_info.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/data/data.dart';
import 'package:responsive_portfolio_app/view/about_me.dart';
import 'package:responsive_portfolio_app/view/footer_view.dart';
import 'package:responsive_portfolio_app/view/skill_view.dart';
import 'package:responsive_portfolio_app/view/work_view.dart';

import '../utils/appTheme.dart';
import '../utils/responsive_layout/responsive.dart';
import 'education_view.dart';
class HomeScreen extends StatefulWidget {
  final ProfileInfo? profileInfo;

   const HomeScreen({
     required this.profileInfo,
     super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ScrollController to manage scrolling
  Widget buildAppBarAction(String text, GlobalKey sectionKey) {
    return TextButton(
      onPressed: () => scrollToSection(_scrollController, sectionKey),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
  final ScrollController _scrollController = ScrollController();
bool isHover=false;
  // GlobalKeys to identify sections
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _workKey = GlobalKey();

  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _skillKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    final themeModeProvider=Provider.of<ThemeSwitcher>(context);
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return  Scaffold(
     endDrawer: ClipRRect(
       child: BackdropFilter(
         filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
         child: Drawer(
           shape: const RoundedRectangleBorder(
             borderRadius: BorderRadius.zero,
           ),
         backgroundColor: AppTheme.isDarkMode(context)? DarkThemeColors.defaultColor:LightThemeColors.backgroundColor,
         child: ListView
           (
           children: [
             ListTile(
               title:  Text("</AW>",
               style: Theme.of(context).textTheme.headlineLarge!.copyWith(
               ),
               ),
               trailing: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.close_outlined)),
             ),
 const Divider(),
  HoverText(
 onPressed: (){scrollToSection(_scrollController,_homeKey);},
   text:'Home',
),
              HoverText(
onPressed: (){scrollToSection(_scrollController, _aboutKey);
  Navigator.pop(context);

},
               text:'About',
             ),
 HoverText(
               onPressed: (){

                 Navigator.pop(context);
                 scrollToSection(_scrollController,_skillKey);},

               text:'Skills',
             ),
HoverText(
               onPressed: (){scrollToSection(_scrollController,_educationKey);

               Navigator.pop(context);
                 },

               text:'Education',
             ),
 HoverText(
               text:'Work',
   onPressed: (){

     Navigator.pop(context);
                 scrollToSection(_scrollController,_workKey);},

 ),

              HoverText(
                onPressed: (){
                  Navigator.pop(context);

                  scrollToSection(_scrollController,_contactKey);},

                text:'Contact',

             ),
const Divider(),
              ListTile(
               title: Text("Theme Switcher",
               style: Theme.of(context).textTheme.bodyLarge,
               ),
             trailing: IconButton(onPressed: ()=> themeModeProvider.setMode(), icon: const Icon(Icons.light_mode_outlined)),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 50.sp),
               child: ElevatedButton(onPressed: ()=> UrlLauncher.navigateUrl("https://red-nicholle-6.tiiny.site/",context),
                 child:Text('Download CV',
                   style: Theme.of(context).textTheme.titleMedium!.copyWith(
                     fontWeight: FontWeight.bold,
                     color: themeModeProvider.isDark?Colors.black:Colors.white,
                   ),
                 ),
               ),
             )
           ],
         ),
         ),
       ),
     ),
      extendBodyBehindAppBar: true,
    appBar: Responsive.isMobile(context)? AppBar(
title:   Text('<AW/>',
  style: Theme.of(context).textTheme.headlineLarge  !.copyWith(
    fontWeight: FontWeight.bold,

  ),

),
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: AppTheme.isDarkMode(context)? Colors.black.withOpacity(0.3):Colors.white.withOpacity(0.3),
          ),
        ),
      ),
    ):AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: AppTheme.isDarkMode(context)? Colors.black.withOpacity(0.3):Colors.white.withOpacity(0.3),
          ),
        ),
      ),
      title: Padding(
        padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.04),
        child: Text('<AW/>',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      actions: [

        buildAppBarAction('Home', _homeKey),
        buildAppBarAction('About', _aboutKey),
        buildAppBarAction('Work', _workKey),
        buildAppBarAction('Education', _educationKey),
        buildAppBarAction('Contact', _contactKey),

        SizedBox(
          height: screenHeight*0.03,
          child: const VerticalDivider(
            color: LightThemeColors.widgetColor,
          ),
        ),
        IconButton(onPressed:() {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            themeModeProvider.setMode();
          });
        }, icon: AppTheme.isDarkMode(context)?const Icon(Icons.light_mode_outlined) :const Icon(Icons.dark_mode_outlined),
        ),
        Padding(
          padding:  EdgeInsets.all(screenWidth*0.01),
          child: ElevatedButton(onPressed: ()=> UrlLauncher.navigateUrl("https://red-nicholle-6.tiiny.site/",context),
            child:Text('Download CV',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(

                color: themeModeProvider.isDark?Colors.black:Colors.white,
              ),
          ),
          ),
        ),
              ],
    ),
      body:  SingleChildScrollView(
        controller: _scrollController,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    key:_homeKey,
                      height:screenHeight*0.95,
                      child: const ResponsiveScreen()),
                  Container(
                    key: _aboutKey,
                      color: AppTheme.isDarkMode(context)?DarkThemeColors.widgetColor:LightThemeColors.widgetColor.withOpacity(0.3),

                      height: screenHeight*1.2,
                      child:  AboutMe(profileInfo: profileInfo,)),
SizedBox(
  key: _skillKey,
  height: screenHeight*0.9,
  child: const SkillView(),
),

                  Container(
                    key: _educationKey,
color: AppTheme.isDarkMode(context)?DarkThemeColors.widgetColor:LightThemeColors.widgetColor.withOpacity(0.3),
                    height: screenHeight*1.2,
                    child:  const Center(
                      child:  EducationView(),
                    ),
                  ),

                  SizedBox(
                    key: _workKey,
                    height: screenHeight*2  ,
child: WorkView(),
                  ),

                  SizedBox(
                    key: _contactKey,
                    height: screenHeight*0.5,
                    child:  const Center(child: FooterView(email:'abdulwahablaghari6@gmail.com',phNumber: '+923083598729',)),
                  ),
                ],
              ),

          ),
       );
    }
}

