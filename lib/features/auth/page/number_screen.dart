import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/verification_screen.dart';

class NumberScreen extends StatefulWidget {
  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
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
                  Text('Enter your mobile number', style: TextStyles.title),
                  SizedBox(height: 7),
                  Text(
                    'We need to verify you. We will send you a one time verification code. ',
                    style: TextStyles.body.copyWith(
                      color: AppColors.blackMediumColor,
                    ),
                  ),
                  SizedBox(height: 42),

                  CustomTextField(
                    hint: '01xxxxxxxxxx',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (value.length < 11) {
                        return 'Phone number must be 11 digits';
                      } else if (!value.startsWith('01')) {
                        return 'Phone number must start with 01';
                      }
                      return null;
                    },
                    onlyDigits: true,
                  ),
                  SizedBox(height: 46.5),

                  MainButton(
                    text: 'Next',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, VerificationScreen());
                        //handle send OTP logic
                      }
                    },
                  ),
                  SizedBox(height: 24),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: TextButton(
                  //     onPressed: () {
                  //       //send confirmation code
                  //     },
                  //     child: Text(
                  //       'Send confirmation code',
                  //       style: TextStyles.small,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
