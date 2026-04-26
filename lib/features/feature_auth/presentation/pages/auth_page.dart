import 'package:dropship_admin/core/router/location_config.dart';
import 'package:dropship_admin/shared/password_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    void _logInTapped() {
      context.go(LocationConfig.shopMenu);
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,

        children: [
          SizedBox(
            width: 40.w,
            child: Column(
              spacing: 1.w,
              children: [
                ShadInput(placeholder: Text('Email')),

                PasswordInput(),

                ShadButton(
                  onPressed: _logInTapped,
                  child: const Text('Log In'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
