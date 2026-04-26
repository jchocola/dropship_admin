import 'package:dropship_admin/features/feature_home/presentation/widgets/common_statistic_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonsStatisticWidget extends StatelessWidget {
  const CommonsStatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 1.w,
      runSpacing: 1.w,
      children: [
        CommonStatisticCard(key: ValueKey('1'),title: 'Total revenue',),
        CommonStatisticCard(key: ValueKey('2'),title: 'Total order',),
        CommonStatisticCard(key: ValueKey('3'),title: 'Total customers',),
        CommonStatisticCard(key: ValueKey('4'),title: 'Avg. order value',),
      ],
    );
  }
}
