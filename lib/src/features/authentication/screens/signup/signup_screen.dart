import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taskwise/src/common_widgets/form/form_header_widget.dart';
import 'package:taskwise/src/constants/image_strings.dart';
import 'package:taskwise/src/constants/text_strings.dart';
import 'package:taskwise/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import '../../../../constants/sizes.dart';
import '../login/login_screen.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FormHeaderWidget(
                    image: tSignupImage,
                    title: tSignupTitle,
                    subTitle: tSignupSubTitle,
                ),
                 SignUpFormWidget(),
                const SizedBox(height: tFormHeight -30,),
                TextButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: Text.rich(
                      TextSpan(
                          text: tDontHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const [
                            TextSpan(
                              text: tLogin,
                              style: TextStyle(color: Colors.blue),
                            )
                          ]
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

