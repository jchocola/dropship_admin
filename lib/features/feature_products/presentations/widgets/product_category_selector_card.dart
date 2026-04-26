import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final fruits = {
  'apple': 'Apple',
  'banana': 'Banana',
  'blueberry': 'Blueberry',
  'grapes': 'Grapes',
  'pineapple': 'Pineapple',
};

class ProductCategorySelectorCard extends StatelessWidget {
  const ProductCategorySelectorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 180),
      child: ShadSelect<String>(
        placeholder: const Text('Select a fruit'),
        options: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              'Fruits',
              style: theme.textTheme.muted.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.popoverForeground,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          ...fruits.entries
              .map((e) => ShadOption(value: e.key, child: Text(e.value))),
        ],
        selectedOptionBuilder: (context, value) => Text(fruits[value]!),
        onChanged: print,
      ),
    );
  }
}