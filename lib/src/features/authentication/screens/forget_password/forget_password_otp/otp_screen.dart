import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:taskwise/src/constants/image_strings.dart';
import 'package:taskwise/src/constants/sizes.dart';
import 'package:taskwise/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(tOTPImage,
              height: size.height * 0.3,
            ),
            ),
            Text(tOTPTitle.toUpperCase(), style: Theme.of(context).textTheme.headline3),
            const SizedBox(height: 20.0),
            const Text(
              "$tOTPSubtitle support@datashark.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:20.0),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){ print("OTP is => $code");},
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(tNext.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
} 