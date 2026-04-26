import 'package:dropship_admin/features/feature_analytics/presentation/widgets/analytics_overview_widget.dart';
import 'package:dropship_admin/features/feature_analytics/presentation/widgets/orders_by_status_widget.dart';
import 'package:dropship_admin/features/feature_analytics/presentation/widgets/top_products_widget.dart';
import 'package:dropship_admin/features/feature_home/presentation/widgets/commons_statistic_widget.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: buildBody(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Analytics Dashboard'),
    );
  }

    Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: SingleChildScrollView(
        child: Column(
          spacing: 1.w,
          children: [
           ShadDatePicker.range(),
           CommonsStatisticWidget(),
           AnalyticsOverviewWidget(),
        
           Row(
            spacing: 1.w,
            children: [
            Expanded(child: TopProductsWidget()),
             Expanded(child: OrdersByStatusWidget())
           ],)
        
        
            
          ],
        ),
      ),
    );
  }
}