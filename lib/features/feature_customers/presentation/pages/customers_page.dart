import 'package:dropship_admin/features/feature_customers/presentation/pages/customer_info_sheet.dart';
import 'package:dropship_admin/features/feature_customers/presentation/widgets/customer_search_filter_widget.dart';
import 'package:dropship_admin/features/feature_customers/presentation/widgets/customers_count_tags.dart';
import 'package:dropship_admin/features/feature_customers/presentation/widgets/customers_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: buildBody(context));
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Customers Management'),
      actions: [CustomerCountTags()],
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: Column(
        spacing: 1.w,
        children: [
          CustomersSearchFilterWidget(),

          GestureDetector(
            onTap: () {
              showShadSheet(
                context: context,
                side: ShadSheetSide.right,
                builder: (context) => const CustomerInfoSheet(),
              );
            },
            child: CustomersListWidget(),
          ),
        ],
      ),
    );
  }
}
