import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  int productCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Image.network(
          widget.model.image ?? "",
          width: 60,
          height: 60,
          fit: BoxFit.contain,
        ),
        title: Text(widget.model.title ?? "", style: TextStyles.medium),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                widget.model.quantityPerPrice ?? "",
                style: TextStyles.small.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 5),
              _addAndRemoveCounter(),
            ],
          ),
        ),

        trailing: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},

                child: Icon(Icons.close, color: AppColors.greyColor),
              ),
              SizedBox(height: 4,),
              Text(widget.model.price ?? "", style: TextStyles.medium),
             
            ],
          ),
        ),
      ),
    );
  }

  Row _addAndRemoveCounter() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove, color: AppColors.greyColor),
          onPressed: () => setState(() {
            if (productCounter > 1) {
              setState(() => productCounter--);
            }
          }),
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.accentColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(productCounter.toString(), style: TextStyles.subtitle),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add, color: AppColors.primaryColor),
          onPressed: () => setState(() => productCounter++),
        ),
      ],
    );
  }
}
