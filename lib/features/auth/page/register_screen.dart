import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custome_password_field.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/login_screen.dart';

class RegisterScreen extends StatelessWidget {
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
              SizedBox(height: 45),
              Text('Sign Up', style: TextStyles.title,),
              SizedBox(height: 13),
              Text('Enter your credentials to continue', style: TextStyles.body),
              SizedBox(height: 45),

              Text(
                'Name',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold,color: AppColors.greyColor),
              ),
              CustomTextField(hint: 'sayed abdulaziz'),
              SizedBox(height: 12),
              Text(
                'Email',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold,color: AppColors.greyColor),
              ),
              CustomTextField(hint: 'example@gmail.com'),
              SizedBox(height: 15),
              Text(
                'Password',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold,color: AppColors.greyColor),
              ),
              CustomePasswordField(),


              SizedBox(height:30),

              MainButton(text: 'Sign Up', onPressed: () {}),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: TextStyles.small,),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
                    onPressed: () {pushTo(context, LoginScreen());},
                    child: Text('Login',style: TextStyles.small.copyWith(color: AppColors.primaryColor),),
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
