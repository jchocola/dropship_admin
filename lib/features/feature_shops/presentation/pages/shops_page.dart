import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_shops/presentation/widgets/shop_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: appBar(),
        floatingActionButton: fab(),
        body: buildBody(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Shops Management '),
      //actions: [ProductCountTags()],
    );
  }

    FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(AppIcons.addIcon),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      spacing: 1.w,
      children: [
        ShopListWidget(),
      
      ],
    );
  }
}
