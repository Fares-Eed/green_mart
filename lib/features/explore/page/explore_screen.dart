import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/explore/widget/explor_card.dart';
import 'package:green_mart/features/shop/data/product_model.dart';
import 'package:green_mart/features/shop/widget/shop_search_bar.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Find Products', style: TextStyles.subtitle)),
      ),
      body: Column(
        children: [
          ShopSearchBar(isEnabled: true),

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              itemCount: exploreProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 13,
                crossAxisSpacing: 13,
                childAspectRatio: 158 / 171
              ),
              itemBuilder: (context, index) {
                    return explorCard(model: exploreProducts[index],);
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
