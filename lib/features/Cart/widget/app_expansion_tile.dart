import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class AppExpansionTile extends StatelessWidget {
  const AppExpansionTile({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          Text(
            text1,
            style: TextStyles.body.copyWith(color: AppColors.greyColor),
          ),
          Spacer(),
          Text(
            text2,
            style: TextStyles.medium.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
