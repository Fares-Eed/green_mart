import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/main/page/Account_screen.dart';
import 'package:green_mart/features/main/page/Favourite_screen.dart';
import 'package:green_mart/features/main/page/cart_screen.dart';
import 'package:green_mart/features/main/page/explore_screen.dart';
import 'package:green_mart/features/shop/page/shop_screen.dart';

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

      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Container _bottomNavBar() {
    return Container(
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 10,
            color: Color(0xff555E58).withValues(alpha: 0.1),
          ),
        ],
      ),

      child: BottomNavigationBar(
     
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          _bottomNavBarItem(icon: AppAssets.storeSvg,label: 'Shop'),
          _bottomNavBarItem(icon: AppAssets.exploreSvg,label: 'Explore'),
          _bottomNavBarItem(icon: AppAssets.cartSvg,label: 'Cart'),
          _bottomNavBarItem(icon: AppAssets.heartSvg,label: 'Favourite'),
          _bottomNavBarItem(icon: AppAssets.userSvg,label: 'Account'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavBarItem({required String icon,required label}) {
    return BottomNavigationBarItem(
          icon: CustomSvgPicture(
            path: icon,
            color: currentIndex == 0
                ? AppColors.primaryColor
                : AppColors.blackColor,
          ),
          label: label,
        );
  }
}
