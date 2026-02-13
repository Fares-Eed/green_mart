import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/search/page/search_screen.dart';
import 'package:green_mart/features/shop/widget/best_selling_builder.dart';
import 'package:green_mart/features/shop/widget/exclusive_offer_builder.dart';
import 'package:green_mart/features/shop/widget/shop_search_bar.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppColors.whiteColor,
        toolbarHeight: 65,
        title: Column(
          children: [
            SizedBox(height: 21,),
            Center(
              child: CustomSvgPicture(
                path: AppAssets.logoSvg,
                color: AppColors.primaryColor,
                height: 42,
              ),
            ),
          ],
        ),
      ),
      
      body: Column(
        children: [
          SizedBox(height:  34),
          //search
          ShopSearchBar(onTap: () => pushTo(context, SearchScreen()),),

          Expanded(
            child: ListView(
              
              children: [
                SizedBox(height: 21),
                //exclusive offers
                ExclusiveOfferBuilder(),
                //best selling
                SizedBox(height: 28),
                BestSellingBuilder(),
                SizedBox(height: 32),
              ],
            ),
          )


        ],
      ),
    );
  }
}
