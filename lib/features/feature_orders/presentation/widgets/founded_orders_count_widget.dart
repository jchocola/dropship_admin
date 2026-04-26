import 'package:flutter/material.dart';

class FoundedOrdersCountWidget extends StatelessWidget {
  const FoundedOrdersCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: '30', children: [
        TextSpan(text: ' orders')
      ] 
    ));
  }
}
