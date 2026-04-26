import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductCountTag extends StatelessWidget {
  const ProductCountTag({
    super.key,
    this.title = 'title',
    this.value = '0',
    this.color = Colors.cyan,
  });
  final Color color;
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.w),
      child: Row(spacing: 1.w, children: [Text(title), Text(value)]),
    );
  }
}

class ProductCountTags extends StatelessWidget {
  const ProductCountTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 1.w,
      children: [ProductCountTag(), ProductCountTag(), ProductCountTag()],
    );
  }
}
