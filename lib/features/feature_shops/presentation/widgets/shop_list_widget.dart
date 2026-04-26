import 'package:dropship_admin/features/feature_shops/data/datasource/mock_shop_data.dart';
import 'package:dropship_admin/features/feature_shops/presentation/widgets/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShopListWidget extends StatelessWidget {
  const ShopListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 1.w,
      runSpacing: 1.w,
      children: List.generate(shopList.length, (index)=> ShopCard(shop: shopList[index],))
    );
  }
}
