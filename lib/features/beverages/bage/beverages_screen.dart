import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/shop/data/product_model.dart';
import 'package:green_mart/features/shop/widget/product_card.dart';

class BeveragesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Beverages', style: TextStyles.subtitle)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune))],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0,top: 8),
          child: ProductCard(model: allProducts[index]),
        ),
        itemCount: allProducts.length,

        
      ),
    );
  }
}
