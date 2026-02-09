import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomePasswordField extends StatefulWidget {
  const CustomePasswordField({
    super.key,
    
    this.prefixIcon, this.validator,
    
  });
  
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  

  @override
  State<CustomePasswordField> createState() => _CustomePasswordFieldState();
}

class _CustomePasswordFieldState extends State<CustomePasswordField> {
  bool obscureText = true;
  Widget eyeIcon = Icon(Icons.remove_red_eye);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(onPressed: (){setState(() {
          obscureText=!obscureText;
          obscureText==true ? eyeIcon=Icon(Icons.remove_red_eye):eyeIcon= Icon(Icons.remove_red_eye_outlined);
        });
        }, icon:eyeIcon),

        hintText: '*************',
        //textStyle anf fill color is in theme

        //borders is in theme

      ),
      
      obscureText: obscureText,

      validator: widget.validator,
    );
  }
}
