import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/main/page/Account_screen.dart';
import 'package:green_mart/features/main/page/Favourite_screen.dart';
import 'package:green_mart/features/main/page/cart_screen.dart';
import 'package:green_mart/features/main/page/explore_screen.dart';
import 'package:green_mart/features/main/page/shop_screen.dart';

class MainAppScreen extends StatefulWidget {
  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: AppColors.whiteColor,

      bottomNavigationBar:
       Container(
        padding: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -5),
              blurRadius: 10,
              color: Color(0xff555E58).withValues(alpha: 0.1)
            )
          ]
        ),

        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.blackColor,
          selectedLabelStyle: TextStyles.small,
          unselectedLabelStyle: TextStyles.small.copyWith(fontSize: 10.8),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppAssets.storeSvg,
                color: currentIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppAssets.exploreSvg,
                color: currentIndex == 1
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppAssets.cartSvg,
                color: currentIndex == 2
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppAssets.heartSvg,
                color: currentIndex == 3
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppAssets.userSvg,
                color: currentIndex == 4
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
