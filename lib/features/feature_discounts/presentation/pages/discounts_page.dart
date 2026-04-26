import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_discounts/presentation/widgets/discount_count_tags.dart';
import 'package:dropship_admin/features/feature_discounts/presentation/widgets/discount_info_card.dart';
import 'package:dropship_admin/features/feature_discounts/presentation/widgets/discount_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DiscountsPage extends StatefulWidget {
  const DiscountsPage({super.key});

  @override
  State<DiscountsPage> createState() => _DiscountsPageState();
}

class _DiscountsPageState extends State<DiscountsPage> {
  bool test = false;

  void onTap() {
    setState(() {
      test = !test;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: buildBody(context), floatingActionButton: fab(),);
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Discounts Management'),
      actions: [DiscountCountTags()],
    );
  }

 FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(AppIcons.addIcon),
    );
  }



  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: Column(
        spacing: 1.w,
        children: [
          Row(
            spacing: 1.w,
            children: [
              Expanded(child: GestureDetector(onTap: onTap, child: DiscountListWidget())),
              Visibility(
                visible: test,
                child: Expanded(child: DiscountInfoCard()))
            ],
          ),
        ],
      ),
    );
  }
}
