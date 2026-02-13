import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/main/page/main_app_screen.dart';
import 'package:green_mart/features/shop/page/shop_screen.dart';

class OrderAcceptedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                SizedBox(height: 110,),
                CustomSvgPicture(path:  AppAssets.successSvg),
                SizedBox(height: 50,),
                Text('Your Order has been accepted',style: TextStyles.title),
                SizedBox(height: 3,),
               
                Text('Your items has been placcd and is on it’s way to being processed',style: TextStyles.medium.copyWith(color: AppColors.greyColor)),
                SizedBox(height: 55,),
               
                MainButton(text: 'Go To Home', onPressed: (){pushTo(context, MainAppScreen());}),
              
              Row()
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}