import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Expanded(
                child: Image.asset(AppAssets.apple),
              ),
            ),
            SizedBox(height: 20),
        
            Text('Apple', style: TextStyles.subtitle),
            SizedBox(height: 8),
            Text(
              '1kg',
              style: TextStyles.body.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Text(
                  '\$4.99',
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
                    child: Icon(
                      Icons.add,
                      color: AppColors.backgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
