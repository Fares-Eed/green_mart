import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class explorCard extends StatelessWidget {
  const explorCard({
    super.key,
    required this.model
  });
  final ProductModel? model;
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 158,height: 171,
      decoration: BoxDecoration(
        color:model?.color??Colors.white ,
        border: Border.all(color: model?.borderColor??Colors.white),//error: The argument type 'Color?' can't be assigned to the parameter type 'Color'. dartargument_type_not_assignable
    borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Image.asset(model?.image??"",height: 95,),
          SizedBox(height: 23,),
          Text(model?.title??"",style: TextStyles.subtitle,)
        ],
      ),
    );
  }
}
