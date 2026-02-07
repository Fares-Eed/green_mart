import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custome_password_field.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/number_screen.dart';
import 'package:green_mart/features/auth/page/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                  Text(
                    'Enter your emails and password',
                    style: TextStyles.body.copyWith(color: AppColors.blackMediumColor),
                  ),
                  SizedBox(height: 40),

                  Text(
                    'Email',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyColor,
                    ),
                  ),
                  CustomTextField(
                    hint: 'example@gmail.com',
                    validator: (value) {
                      if (value!.isEmpty ||
                          !value.contains('@') ||
                          value.length < 6) {
                        return 'pleas enter your Email';
                      }
                    },
                  ),
                  SizedBox(height: 12.5),

                  Text(
                    'Password',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyColor,
                    ),
                  ),
                  CustomePasswordField(),

                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {pushTo(context, NumberScreen());},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.small,
                      ), //pushTo ResetPasswordScreen
                    ),
                  ),
                  SizedBox(height: 40),

                  MainButton(
                    text: 'Log In',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //login logic
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?', style: TextStyles.small),
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          pushReplacment(context, RegisterScreen());
                        },
                        child: Text(
                          'Singup',
                          style: TextStyles.small.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// to handle input validation :
// 1 - Wrap the Column with "Form" Widget
// 2 - create formKey<GlobalState> and assign it to the Form
// 3 - add validator to each TextFormField
// 4 - check formKey.currentState?.validate() when login btn is pressed
