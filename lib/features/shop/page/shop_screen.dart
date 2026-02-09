import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/shop/widget/best_selling_builder.dart';
import 'package:green_mart/features/shop/widget/exclusive_offer_builder.dart';
import 'package:green_mart/features/shop/widget/shop_search_bar.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomSvgPicture(
            path: AppAssets.logoSvg,
            color: AppColors.primaryColor,
            height: 42,
          ),
        ),
      ),
      body: Column(
        children: [
          //search
          ShopSearchBar(),

          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21),
                //exclusive offers
                ExclusiveOfferBuilder(),
                //best selling
                SizedBox(height: 28),
                BestSellingBuilder(),
              ],
            ),
          )


        ],
      ),
    );
  }
}
