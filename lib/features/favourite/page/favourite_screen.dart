import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/favourite/widget/favorurite_product_card.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Favorurite', style: TextStyles.subtitle)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.separated(
          
          separatorBuilder: (context, index) {
            return Divider(color:Color(0xffE2E2E2),);
          },
          itemCount: allProducts.length,
        
           itemBuilder: (context, index) {
             return FavoruiteProductCard(model:  allProducts[index]);
           },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:  35),
        child: MainButton(text: 'Add All To Cart', onPressed: (){}),
      ) ,
    
    );
  }
}
