import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_orders/presentation/widgets/founded_orders_count_widget.dart';
import 'package:dropship_admin/features/feature_orders/presentation/widgets/order_status_selector_card.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2.w,
      children: [
        Flexible(child: ShadInput(
          leading: Icon(AppIcons.searchIcon),
          placeholder: Text('Search Order'),
        )),

        FoundedOrdersCountWidget(),
        OrderStatusSelectorCard()
      ],
    );
  }
}
