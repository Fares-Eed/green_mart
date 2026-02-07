import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class ExploreScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text('Explore')
      ),
    );
  }
}