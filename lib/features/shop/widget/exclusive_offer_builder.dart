import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/beverages/bage/beverages_screen.dart';
import 'package:green_mart/features/shop/data/product_model.dart';
import 'package:green_mart/features/shop/widget/product_card.dart';

class ExclusiveOfferBuilder extends StatelessWidget {
  const ExclusiveOfferBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text('Exclusive Offer', style: TextStyles.title),
              Spacer(),
              TextButton(
                onPressed: () {pushTo(context, BeveragesScreen());},
                child: Text(
                  'See all',
                  style: TextStyles.body.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
    
        //exlicsive offers List View
        SizedBox(
          height:
              255, //the list view should be sized ,so we used the sized box to all of the list view
          child: ListView.separated(
            itemCount: offerProducts.length,
            scrollDirection: Axis.horizontal,
    
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
    
            //ProductCard
            itemBuilder: (context, index) {
              return ProductCard(model: offerProducts[index],);
            },
          ),
        ),
      ],
    );
  }
}
