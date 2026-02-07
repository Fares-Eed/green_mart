import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/features/auth/page/number_screen.dart';
import 'package:green_mart/features/intro/splash_screen.dart';
import 'package:green_mart/features/intro/welcom_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor,appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor,)),
      home: NumberScreen(),
    );
  }
}
