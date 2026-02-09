import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_fonts.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

import 'package:green_mart/features/main/page/main_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFonts.poppins,

        scaffoldBackgroundColor: AppColors.backgroundColor,

        appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor),
        
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: borderLessStyle(),
          focusedBorder: borderLessStyle(),
          errorBorder: borderLessStyle(),
          focusedErrorBorder: borderLessStyle(),
          disabledBorder: borderLessStyle(),
          hintStyle: TextStyles.body.copyWith(
            color: AppColors.blackMediumColor,
          ),
          fillColor: AppColors.accentColor,
          filled: true,
        ),

        colorScheme: ColorScheme.fromSeed(
          onSurface: AppColors.blackColor,
          seedColor: AppColors.primaryColor
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
             type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.blackColor,
          selectedLabelStyle: TextStyles.small,
          unselectedLabelStyle: TextStyles.small.copyWith(fontSize: 10.8,fontWeight: FontWeight.w600),

        )
      ),
      home: MainAppScreen(),
    );
  }

  OutlineInputBorder borderLessStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.12),
      borderSide: BorderSide.none,
    );
  }
}
