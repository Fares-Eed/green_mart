import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onlyDigits = false,  this.enabled=true, this.onTap,
  });
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool onlyDigits;
  final bool enabled;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: enabled,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: AppColors.accentColor,
        filled: true,
        hintText: hint,
        hintStyle: TextStyles.body.copyWith(color: AppColors.blackMediumColor),
        

        enabledBorder: borderLessStyle(),
        focusedBorder: borderLessStyle(),
        errorBorder: borderLessStyle(),
        focusedErrorBorder: borderLessStyle(),
        disabledBorder: borderLessStyle(),
      ),
      validator: validator,
      //only digits
      keyboardType: onlyDigits ? TextInputType.number : TextInputType.text,
      inputFormatters: [if (onlyDigits) FilteringTextInputFormatter.digitsOnly],
    );
  }

  OutlineInputBorder borderLessStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.12),
      borderSide: BorderSide.none,
    );
  }
}
