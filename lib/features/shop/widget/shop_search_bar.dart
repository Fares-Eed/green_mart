import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/custom_text_field.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({super.key,this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomTextField(
        onTap: onTap, //pushTo SearchScreen
        enabled: false,
        hint: 'Search Store',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
