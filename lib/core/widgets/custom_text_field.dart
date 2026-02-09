import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
        hintText: hint,
        //borders is in theme
        //textStyle anf fill color is in theme


       
      ),
      validator: validator,
      //only digits
      keyboardType: onlyDigits ? TextInputType.number : TextInputType.text,
      inputFormatters: [if (onlyDigits) FilteringTextInputFormatter.digitsOnly],
    );
  }

 
}
