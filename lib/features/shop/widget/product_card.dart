import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/product_details/page/product_details_screen.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: model));
      },
      child: Container(
        margin: EdgeInsets.only(left: 20),
        width: 157,
        height: 255,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          border: Border.all(color: AppColors.accentColor),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 1,
              color: AppColors.greyColor.withValues(alpha: 0.1),
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23),
              Center(
                child: SizedBox(
                  height: 90,

                  child: Hero(
                    tag: model.tag ?? "", // not working
                    child: Image.network(model.image ?? ""),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text(model.title ?? "", style: TextStyles.subtitle),
              SizedBox(height: 8),
              Text(
                model.quantityPerPrice ?? "",
                style: TextStyles.body.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    model.price ?? "",
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 41,
                    height: 41,
                    child: FloatingActionButton.small(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(Icons.add, color: AppColors.backgroundColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
