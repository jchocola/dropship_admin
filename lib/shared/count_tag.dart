import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class CountTag extends StatelessWidget {
  const CountTag({
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
    return ShadBadge.outline(
      backgroundColor: color,
      child: Row(spacing: 1.w, children: [Text(title), Text(value)]),
    );
  }
}
