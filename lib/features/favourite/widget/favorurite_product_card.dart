import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class FavoruiteProductCard extends StatelessWidget {
  const FavoruiteProductCard({
    super.key, required this.model,
    
  });
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  25.0,bottom: 25),
      child: ExpansionTile(
       title: Row(
         children: [
          Image.network(model.image??"",width: 50,height: 50,),
          SizedBox(width: 26,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title??"",style: TextStyles.medium,),SizedBox(height: 6,),
              Text(model.quantityPerPrice??"",style: TextStyles.small.copyWith(color: AppColors.greyColor),),

            ],
          ),
          Spacer(),
          Text(model.price??"",style: TextStyles.medium,),SizedBox(width: 6,),
          
         ],
       ),
      ),
    );
  }
}
