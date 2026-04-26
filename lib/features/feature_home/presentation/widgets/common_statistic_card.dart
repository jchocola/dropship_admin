import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class CommonStatisticCard extends StatelessWidget {
  const CommonStatisticCard({
    super.key,
    this.icon = Icons.abc,
    this.title = 'Title',
    this.value = 'Value',
    this.iconColor = Colors.black54,
  });
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ShadCard(
      width: 20.w,
      height: 15.h,
      child: Column(children: [Icon(icon), Text(value), Text(title)]),
    );
  }
}
