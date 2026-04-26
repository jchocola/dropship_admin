import 'package:dropship_admin/core/icon/icons.dart';
import 'package:flutter/material.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({super.key});

  @override
  Widget build(BuildContext context) {
     void onFABTapped() {}
    return Scaffold(
      appBar: AppBar(title: Text('ShopPage'),),
        floatingActionButton: FloatingActionButton(onPressed: onFABTapped, child: Icon(AppIcons.addIcon),),
    );
  }
}
