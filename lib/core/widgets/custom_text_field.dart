import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefix: prefixIcon,
        suffix: suffixIcon,
        fillColor: AppColors.textFieldColor,
        filled: true,
        hintText: hint,
        hintStyle: TextStyles.body.copyWith(color: AppColors.normalColor),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.12),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.12),
          borderSide: BorderSide.none

        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.12),
          borderSide: BorderSide.none

        ),

      ),
    );
  }
}
