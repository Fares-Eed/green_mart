import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/login_screen.dart';

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAssets.welcom,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 100,
            left: 27.29,
            right: 27.97,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSvgPicture(
                  path: AppAssets.carrotSvg,
                  color: AppColors.whiteColor,
                ),
                SizedBox(height: 35.9),
                Text(
                  'Welcome\n to our store ',
                  textAlign: TextAlign.center,
                  style: TextStyles.headline.copyWith(color: AppColors.whiteColor),
                ),
                SizedBox(height: 7.25),

                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyles.body.copyWith(color: AppColors.greyColor),
                ),
                SizedBox(height: 35.82),

                MainButton(text: 'Get Started',onPressed: (){pushReplacment(context, LoginScreen());},),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
