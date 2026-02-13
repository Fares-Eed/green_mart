import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/Cart/page/order_accepted_screen.dart';
import 'package:green_mart/features/Cart/widget/app_expansion_tile.dart';
import 'package:green_mart/features/Cart/widget/cart_product_card.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Cart', style: TextStyles.subtitle)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(color: Color(0xffE2E2E2));
          },
          itemCount: allProducts.length,

          itemBuilder: (context, index) {
            return CartProductCard(model: allProducts[index]);
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: MainButton(
          text: 'Go to Check out',

          onPressed: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: AppColors.backgroundColor,

              builder: (context) {
                return SingleChildScrollView(
                  child: Column(
                 //   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27),
                      Padding(
                        padding: const EdgeInsets.only(left:  20.0,right: 20),
                        child: Row(
                          children: [
                            Text('Check out', style: TextStyles.title),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.cancel),
                            ),
                          ],
                        ),
                      ),
                      _appDivider(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            AppExpansionTile(
                              text1: 'Delivery',
                              text2: 'Select Method',
                            ),
                            _appDivider(),
                            ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    'Pament',
                                    style: TextStyles.body.copyWith(
                                      color: AppColors.greyColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.credit_card),
                                ],
                              ),
                            ),
                            _appDivider(),
                            AppExpansionTile(
                              text1: 'Promo Code',
                              text2: 'Pick discount',
                            ),
                            _appDivider(),
                            AppExpansionTile(
                              text1: 'Total Cost',
                              text2: '\$13.97',
                            ),
                            _appDivider(),
                            Text(
                              'By placing an order you agree to our\n Terms And Conditions',
                              style: TextStyles.small.copyWith(
                                color: AppColors.greyColor,
                              ),textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 20,),
                            MainButton(text: 'Place Order', onPressed: () {pushTo(context, OrderAcceptedScreen());}),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Divider _appDivider() => Divider(color: Color(0xB2E2E2E2));
}
