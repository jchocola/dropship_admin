import 'dart:developer';

import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_products/presentations/widgets/product_count_tags.dart';
import 'package:dropship_admin/shared/count_tag.dart';
import 'package:dropship_admin/features/feature_products/presentations/widgets/product_info_card.dart';
import 'package:dropship_admin/features/feature_products/presentations/widgets/product_search_filter_widget.dart';
import 'package:dropship_admin/features/feature_products/presentations/widgets/products_table_widget.dart';
import 'package:dropship_admin/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool _test = false;

  void onTap() {
    setState(() {
      _test = !_test;
      logger.d(_test);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: buildBody(context),
      floatingActionButton: fab(),
    );
  }

  FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(AppIcons.addIcon),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Products Management'),
      actions: [ProductCountTags()],
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: Column(
        spacing: 1.w,
        children: [
          ProductSearchFilterWidget(),
          Row(
            spacing: 1.w,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onTap,
                  child: ProductsTableWidget(),
                ),
              ),
              Visibility(
                visible: _test,
                child: Expanded(child: ProductInfoCard()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
