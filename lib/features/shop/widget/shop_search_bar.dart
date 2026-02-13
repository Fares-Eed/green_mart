import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({super.key,this.onTap,this.isEnabled});
  final Function()? onTap;
  final bool ?isEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: CustomTextField(
          enabled: isEnabled??false,
          hint: 'Search Store',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
