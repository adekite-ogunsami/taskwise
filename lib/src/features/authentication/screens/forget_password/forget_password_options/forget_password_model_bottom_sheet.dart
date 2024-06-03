import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskwise/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forgot_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: SizedBox(
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headline2),
              Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: tDefaultSize),
              ForgotPasswordBtnWidget(
                btnIcon: Icons.email_outlined,
                title: tEmail,
                subTitle: tResetViaEmail,
                onTap: (){
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordMailScreen());
                },
              ),
              // const SizedBox(height: 20.0),
              // ForgotPasswordBtnWidget(
              //   btnIcon: Icons.mobile_friendly_outlined,
              //   title: tPhone,
              //   subTitle: tResetViaPhone,
              //   onTap: (){},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
