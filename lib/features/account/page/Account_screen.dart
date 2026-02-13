import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/main_button.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(AppAssets.accountPhoto),
                  ),
                  SizedBox(width: 16),
                  Column(
                    children: [
                      Text('Sayed Abdul-Aziz', style: TextStyles.subtitle),

                      Text(
                        'sayed@gmail.com',
                        style: TextStyles.body.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: AppColors.primaryColor),
                  ),
                ],
              ),
            ),
            _appDivider(),
            AccountExpantionTile(icon: AppAssets.OrdersSvg, text: 'Orders'),
            _appDivider(),
            AccountExpantionTile(
              icon: AppAssets.my_detailsSvg,
              text: 'My Details',
            ),
            _appDivider(),
            AccountExpantionTile(
              icon: AppAssets.addressSvg,
              text: 'Delivery Address',
            ),
            _appDivider(),
            AccountExpantionTile(
              icon: AppAssets.PaymentSvg,
              text: 'Payment Methods',
            ),
            _appDivider(),
            AccountExpantionTile(
              icon: AppAssets.promo_codeSvg,
              text: 'Promo Cord',
            ),
            _appDivider(),
            AccountExpantionTile(
              icon: AppAssets.notifecationsSvg,
              text: 'Notifecations ',
            ),
            _appDivider(),
            AccountExpantionTile(icon: AppAssets.helpSvg, text: 'Help'),
            _appDivider(),
            AccountExpantionTile(icon: AppAssets.aboutSvg, text: 'About'),
            _appDivider(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: MainButton(
                text: 'Log Out',
                onPressed: () {},
                bgColor: Color(0xffF2F3F2),
                textStyle: TextStyles.button.copyWith(
                  color: AppColors.primaryColor,

                ),
                hasBreIcon: true,
                breIcon: Icons.logout,
                breIconColor: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }

  Divider _appDivider() => Divider(color: Color(0xB2E2E2E2));
}

class AccountExpantionTile extends StatelessWidget {
  const AccountExpantionTile({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          CustomSvgPicture(path: icon),
          SizedBox(width: 18),
          Text(text, style: TextStyles.body),
        ],
      ),
    );
  }
}
