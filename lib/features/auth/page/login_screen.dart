import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custome_password_field.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomSvgPicture(path: AppAssets.carrotSvg),
              ),
              SizedBox(height: 40),
              Text('Login', style: TextStyles.title),
              SizedBox(height: 16),
              Text('Enter your emails and password', style: TextStyles.body),
              SizedBox(height: 40),

              Text(
                'Email',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold,color: AppColors.greyColor),
              ),
              CustomTextField(hint: 'example@gmail.com'),
              SizedBox(height: 12.5),

              Text(
                'Password',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold,color: AppColors.greyColor),
              ),
              CustomePasswordField(),

              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?', style: TextStyles.small),//pushTo ResetPasswordScreen
                ),
              ),
              SizedBox(height: 40),

              MainButton(text: 'Log In', onPressed: () {}),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',style: TextStyles.small,),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
                    onPressed: () {pushTo(context, RegisterScreen());},
                    child: Text('Singup',style: TextStyles.small.copyWith(color: AppColors.primaryColor),),
                  ), 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
