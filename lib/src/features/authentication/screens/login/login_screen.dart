import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwise/src/constants/image_strings.dart';
import 'package:taskwise/src/constants/sizes.dart';
import 'package:taskwise/src/constants/text_strings.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize + 10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormHeaderWidget(
                image: tLoginImage,
                title: tLoginTitle,
                subTitle: tLoginSubTitle,
              ),
              LoginFormWidget(),
              LoginFooterWidget()
            ],
          ),
        ),
      ),
    ),
    );

  }
}