import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taskwise/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password/forget_password_options/forgot_password_btn_widget.dart';


  class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
  }

  class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool _obscurePassword = true;


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20.0, right:10.0),
                    child: Icon(Icons.mail_outline_rounded),
                  ),
                  // labelText: tEmail,
                  hintText: tEmail,
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right:10.0),
                  child: Icon(Icons.key),
                ),
                // labelText: tPassword,
                hintText: tPassword,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 10.0, right:5.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
              ),
              obscureText: _obscurePassword,
            ),
            const SizedBox(height: tFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  }, child: const Text.rich(
                        TextSpan(
                          text: tForgetPassword,
                          style: TextStyle(color: Colors.blue),
                        ),
                  )
              ),),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tLogin.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }


}

