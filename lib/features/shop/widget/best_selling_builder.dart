import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/shop/widget/product_card.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({
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
              Text('Best Selling', style: TextStyles.title),
              Spacer(),
              TextButton(
                onPressed: () {},
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
    
        //best selling List View
        SizedBox(
          height:
              255, //the list view should be sized ,so we used the sized box to all of the list view
          child: ListView.separated(
            itemCount: 30,
            scrollDirection: Axis.horizontal,
    
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
    
            //
            itemBuilder: (context, index) {
              return ProductCard();
            },
          ),
        ),
      ],
    );
  }
}
