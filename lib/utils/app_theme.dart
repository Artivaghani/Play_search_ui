
import 'package:arti_vaghani_practicle/config/config_packages.dart';


class AppTheme {
  static final dark = ThemeData.dark().copyWith(
      primaryColor: AppColors.secondaryColor,
      scaffoldBackgroundColor: AppColors.primaryColor,
      iconTheme: const IconThemeData(color: AppColors.terneryColor),
      cardColor: AppColors.cardColor,
      hintColor: AppColors.deviderColor,
      dividerColor: AppColors.terneryColor,
      textTheme: TextTheme(
        headlineLarge: getTextStyle(AppColors.terneryColor, FontDimen.dimen20,
            fontWeight: FontWeight.w700),
        headlineMedium: getTextStyle(AppColors.terneryColor, FontDimen.dimen18,
            fontWeight: FontWeight.w700),
        headlineSmall: getTextStyle(AppColors.terneryColor, FontDimen.dimen16,
            fontWeight: FontWeight.w700),
        bodyLarge: getTextStyle(AppColors.terneryColor, FontDimen.dimen20,
            fontWeight: FontWeight.w400),
        bodyMedium: getTextStyle(AppColors.terneryColor, FontDimen.dimen14,
            fontWeight: FontWeight.w400),
        bodySmall: getTextStyle(AppColors.terneryColor, FontDimen.dimen14,
            fontWeight: FontWeight.w700),
        labelLarge: getTextStyle(AppColors.secondaryColor, FontDimen.dimen18,
            fontWeight: FontWeight.w700),
        labelMedium: getTextStyle(AppColors.terneryColor, FontDimen.dimen16,
            fontWeight: FontWeight.w500),
        labelSmall: getTextStyle(AppColors.terneryColor, FontDimen.dimen12,
            fontWeight: FontWeight.w400),
      ));
}

TextStyle getTextStyle(Color color, double size, {FontWeight? fontWeight}) =>
    GoogleFonts.quicksand(
        textStyle: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: 0.3,
      height: 1.2,
    ));
