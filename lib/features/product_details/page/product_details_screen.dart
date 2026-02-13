import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavourite = false;
  int productCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.37,
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Column(
                children: [
                  SizedBox(height: 30),

                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Spacer(),
                      Icon(Icons.ios_share),
                    ],
                  ),
                  SizedBox(height: 20),
                  Hero(
                    tag: widget.model.tag ?? "", // not working
                    child: Image.network(
                      widget.model.image ?? "",
                      width: 300,
                      height: 180,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Naturel Red Apple', style: TextStyles.title),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavourite = !isFavourite;
                            });
                          },
                          icon: Icon(
                            isFavourite == false
                                ? Icons.favorite_border
                                : Icons.favorite,
                          ),
                          color: isFavourite == false
                              ? AppColors.greyColor
                              : Colors.redAccent,
                        ),
                      ],
                    ),
                    Text(
                      widget.model.quantityPerPrice ?? "",
                      style: TextStyles.medium.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.greyColor,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        _addAndRemoveCounter(),
                        Spacer(),
                        Text(
                          widget.model.price.toString(),
                          style: TextStyles.title,
                        ),
                      ],
                    ),
                    Divider(color: Color(0xB2E2E2E2)),
                    SizedBox(height: 15),
                    ExpansionTile(
                      title: Text('Product Detail', style: TextStyles.body),
                      children: [
                        Text(
                          widget.model.description ?? '',
                          style: TextStyles.small.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ExpansionTile(
                      title: Row(
                        children: [
                          Text('Nutritions', style: TextStyles.body),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 45,
                            decoration: BoxDecoration(
                              color: AppColors.accentColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                '100gr',
                                style: TextStyles.small.copyWith(
                                  color: AppColors.greyColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Text(
                          widget.model.description ?? '',
                          style: TextStyles.small.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ExpansionTile(
                      title: Row(
                        children: [
                          Text('Review', style: TextStyles.body),
                          Spacer(),
                          for (int i = 0; i < 5; i++) _orangeStareIcon(),
                        ],
                      ),
                      children: [
                        Text(
                          widget.model.description ?? '',
                          style: TextStyles.small.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    MainButton(
                      text: 'Add To Cart',
                      onPressed: () {
                        //pushTo(CartScreen)
                      },
                      height: 60,
                    ),
                  ],
                ),
              ), //this column  is for padding
            ),
          ),
        ],
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

  Icon _orangeStareIcon() {
    return Icon(Icons.star, color: Color(0xffF3603F), size: 12.6);
  }
}
