import 'package:dropship_admin/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:logger/logger.dart';

final logger = Logger();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ShadApp(
      builder: (context, child) => Sizer(
        builder: (context, orientation, screenType) => MaterialApp.router(
          routerConfig: appRouter,
          title: 'Dropship Admin',
        ),
      ),
    );
  }
}
