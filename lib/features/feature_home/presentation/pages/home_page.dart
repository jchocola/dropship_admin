import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_home/presentation/widgets/commons_statistic_widget.dart';
import 'package:dropship_admin/features/feature_home/presentation/widgets/recent_orders_widget.dart';
import 'package:dropship_admin/features/feature_home/presentation/widgets/top_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Overview')),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 1.w,
        children: [
          Center(child: CommonsStatisticWidget()),
          Column(
            children: [
              Row(
                spacing: 1.w,
                children: [
                  Expanded(flex: 2, child: RecentOrdersWidget()),
                  Expanded(flex: 1, child: TopProductsWidget()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
