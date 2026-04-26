import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class CustomerInfoSheet extends StatelessWidget {
  const CustomerInfoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadSheet(
      constraints: BoxConstraints(maxWidth: 50.w),
      child: const Placeholder(
        child: Center(child: Text('Customer Info Sheet'),),
      ),
    );
  }
}