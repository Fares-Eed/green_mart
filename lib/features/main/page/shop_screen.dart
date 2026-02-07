import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomSvgPicture(
            path: AppAssets.logoSvg,
            color: AppColors.primaryColor,
            height: 42,
          ),
        ),
      ),
      body: Column(
        children: [
          //search
          ShopSearchBar(),
          //exlicsive offers
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('Exclusive Offer', style: TextStyles.title),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyles.body.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          SizedBox(
            height: 300,
            child: ListView.separated(
              itemCount: 30,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
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
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                          SizedBox(height: 19),
                          Center(child: Expanded(child: Image.asset(AppAssets.apple))),
                          SizedBox(height: 18),
                                        
                          Text('Apple',style: TextStyles.subtitle,),
                          SizedBox(height: 8),
                          Text('1kg',style: TextStyles.body.copyWith(color: AppColors.greyColor)),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('4.99\$',style:TextStyles.body.copyWith(fontWeight: FontWeight.w600),),
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
                          ),
                                        
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomTextField(
        onTap: () {}, //pushTo SearchScreen
        enabled: false,
        hint: 'Search Store',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
