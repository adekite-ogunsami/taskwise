import 'package:flutter/material.dart';
import 'package:taskwise/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:taskwise/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:taskwise/src/features/authentication/screens/login/login_header_widget.dart';

import '../../../../constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}