import 'package:dropship_admin/features/feature_home/presentation/widgets/common_statistic_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReviewStatusCards extends StatelessWidget {
  const ReviewStatusCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
       spacing: 1.w,
      runSpacing: 1.w,
      alignment: .center,
      children: [
        CommonStatisticCard(),
        CommonStatisticCard(),
        CommonStatisticCard(),
        CommonStatisticCard(),
        CommonStatisticCard(),
      ],
    );
  }
}
