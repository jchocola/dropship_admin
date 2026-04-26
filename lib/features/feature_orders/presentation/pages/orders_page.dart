import 'package:dropship_admin/features/feature_orders/presentation/widgets/founded_orders_list_widget.dart';
import 'package:dropship_admin/features/feature_orders/presentation/widgets/picked_order_detail_widget.dart';
import 'package:dropship_admin/features/feature_orders/presentation/widgets/search_filter_widget.dart';
import 'package:dropship_admin/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  bool _test = false;

  void select() {
    setState(() {
      _test = !_test;
      logger.d(_test);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orders Management')),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      spacing: 1.w,
      children: [
        SearchFilterWidget(),
        Row(
          spacing: 1.w,
          children: [
            Expanded(

              child: GestureDetector(
                onTap: ()=> select(),
                child: FoundedOrdersListWidget())),
            Visibility(
              visible: _test,
              child: Expanded(
                child: PickedOrderDetailWidget(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
