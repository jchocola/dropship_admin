
import 'package:dropship_admin/features/feature_shops/domain/entities/shop.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key,this.shop});
  final Shop? shop;
  @override
  Widget build(BuildContext context) {
    return  ShadCard(
      width: 20.w,
      child: Row(
        spacing: 1.w,
        children: [
         ShadAvatar(
  'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
  placeholder: Text('CN'),
),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(shop?.name ?? 'null', maxLines: 2,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
