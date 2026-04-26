import 'package:flutter/material.dart';

class FoundedProductsCountWidget extends StatelessWidget {
  const FoundedProductsCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: '30', children: [
        TextSpan(text: ' products')
      ] 
    ));
  }
}
