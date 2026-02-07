import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/page/number_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  @override
  State<VerificationScreen> createState() => _VerificationState();
}

class _VerificationState extends State<VerificationScreen> {
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
                  Text('Enter verification code', style: TextStyles.title),
                  SizedBox(height: 7),
                  Text(
                    'We have sent SMS to: 01XXXXXXXXXX',
                    style: TextStyles.body.copyWith(
                      color: AppColors.blackMediumColor,
                    ),
                  ),
                  SizedBox(height: 28.5),
                  Align(
                    alignment: Alignment.center,
                    child: pinputM(),
                  ),

                  SizedBox(height: 31),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {}, //handle resend OTP logic here
                        child: Text(
                          'Resend OTP',
                          style: TextStyles.small.copyWith(
                            color: Color(0xffF37A20),
                          ),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          pushTo(context, NumberScreen());
                        },
                        child: Text(
                          'Change Phone Number',
                          style: TextStyles.small,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 27.5),
                  MainButton(
                    text: 'Confirm',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Pinput pinputM() {
    return Pinput(
                    length: 5,
                    separatorBuilder: (index) => const SizedBox(width: 12),
                    validator: (value) {
                      if (value == null || value.length < 5) {
                        return 'Please enter the full code';
                      }
                      return null;
                    },
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
  }
}
