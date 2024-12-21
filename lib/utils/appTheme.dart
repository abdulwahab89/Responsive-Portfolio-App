import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';
import 'package:responsive_portfolio_app/utils/responsive_layout/responsive.dart';

class Apptheme{
  static TextTheme getTheme(BuildContext context){
    double h1;
    double h2;
    double h3;
    double subtitle;
    double bodyLarge;
    double bodyMedium;
    double bodySmall;
if(Responsive.isMobile(context)){
  h1=36.sp;
  h2=18.sp;
  h3=24.sp;
  subtitle=18.sp;
  bodyLarge=15.sp;
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
        color: LightThemeColors.textColor,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: subtitle,
        fontWeight: FontWeight.w400,
        color: LightThemeColors.textColor.withOpacity(0.5),
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: h2,
        fontWeight: FontWeight.w600,
        color: LightThemeColors.textColor,
      ),
        headlineSmall: GoogleFonts.inter(
          fontSize: h3,
          fontWeight: FontWeight.w600,
          color: LightThemeColors.textColor,
        ),
      bodyLarge: GoogleFonts.inter(
        fontSize: bodyLarge,
        fontWeight: FontWeight.w400,
        color: LightThemeColors.textColor,
      ),
      bodyMedium:  GoogleFonts.inter(
        fontSize: bodyMedium,
        fontWeight: FontWeight.w400,
        color: LightThemeColors.textColor,
      ),
      bodySmall:  GoogleFonts.inter(
        fontSize: bodySmall,
        fontWeight: FontWeight.w400,
        color: LightThemeColors.textColor,
      )
    );
  }
}