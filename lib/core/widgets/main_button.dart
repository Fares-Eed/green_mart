import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
     this.bgColor= AppColors.primaryColor ,
     this.width=double.infinity,
     this.height=58.88,
     this.radius=20,
    required this.onPressed,
    this.textStyle,
    this.hasBreIcon=false,
    this.breIcon,
    this.breIconColor
  });
  final String text;
  final Color bgColor;
  final double width;
  final double height;
  final double radius;
  final Function() onPressed;
  final TextStyle? textStyle ;
  final bool hasBreIcon ;
  final Color? breIconColor ;
  final IconData? breIcon ;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
           
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(hasBreIcon)
          Icon(breIcon??Icons.logout,color: breIconColor??AppColors.primaryColor,),
          if(hasBreIcon)
          SizedBox(width: 5,),
         
          Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle?? TextStyles.button.copyWith(color: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
