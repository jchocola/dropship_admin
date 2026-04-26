import 'package:dropship_admin/shared/count_tag.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductCountTags extends StatelessWidget {
  const ProductCountTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 1.w,
      children: [CountTag(), CountTag(), CountTag()],
    );
  }
}
