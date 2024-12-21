import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio_app/utils/colors/dark_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

class Apptheme{

  static bool isDarkMode(BuildContext context){
    final theme=Theme.of(context).brightness;
    return theme==Brightness.dark;
  }
  static TextTheme getTheme(BuildContext context,bool isDarkMode){

    double h1;
    double h2;
    double h3;
    double subtitle;
    double bodyLarge;
    double bodyMedium;
    double bodySmall;
if(Responsive.isMobile(context)){
  h1=50.sp;
  h2=18.sp;
  h3=24.sp;
  subtitle=21.sp;
  bodyLarge=25.sp;
  bodySmall=bodyLarge;
  bodyMedium=bodyLarge;
  }else{
  bodyLarge=18.sp;
bodyMedium=16.sp;
bodySmall=12.sp;

  subtitle=12.sp;
  h1=60.sp;
  h2=36.sp;
  h3=30.sp;
}

    return TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: h1,
        fontWeight: FontWeight.w700,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: subtitle,
        fontWeight: FontWeight.w400,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: h2,
        fontWeight: FontWeight.w600,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,

      ),
        headlineSmall: GoogleFonts.inter(
          fontSize: h3,
          fontWeight: FontWeight.w600,
          color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,

        ),
      bodyLarge: GoogleFonts.inter(
        fontSize: bodyLarge,
        fontWeight: FontWeight.w400,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,

      ),
      bodyMedium:  GoogleFonts.inter(
        fontSize: bodyMedium,
        fontWeight: FontWeight.w400,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,

      ),
      bodySmall:  GoogleFonts.inter(
        fontSize: bodySmall,
        fontWeight: FontWeight.w400,
        color: isDarkMode? DarkThemeColors.primaryTextColor:LightThemeColors.textColor,

      )
    );
  }
}