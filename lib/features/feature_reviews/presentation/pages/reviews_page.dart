import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_reviews/presentation/widgets/review_list_widget.dart';
import 'package:dropship_admin/features/feature_reviews/presentation/widgets/review_status_cards.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: buildBody(context), floatingActionButton: fab(),);
  }

  PreferredSizeWidget appBar() {
    return AppBar(title: Text('Reviews Dashboard'));
  }

  FloatingActionButton fab() {
    return FloatingActionButton(onPressed: () {}, child: Icon(AppIcons.addIcon),);
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: SingleChildScrollView(
        child: Column(
          spacing: 1.w,
          children: [ReviewStatusCards(), ReviewListWidget()],
        ),
      ),
    );
  }
}
