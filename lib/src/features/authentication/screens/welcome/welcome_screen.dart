import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:taskwise/src/constants/colors.dart';
import 'package:taskwise/src/constants/sizes.dart';
import 'package:taskwise/src/constants/text_strings.dart';
import 'package:taskwise/src/features/authentication/screens/login/login_screen.dart';
import 'package:taskwise/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tDarkBg : tLightBg,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              tWelcomeImage,
              height: height * 0.4,
            ),
            Column(
                // GoogleFonts.dmSans(textStyle: TextStyle( fontSize: 22, fontWeight: FontWeight.bold,))
              children: [
                Text(tWelcomeTitle, style: Theme.of(context).textTheme.headline3),
                Text(tWelcomeSubTitle, style: GoogleFonts.rubik(), textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(tLogin.toUpperCase()),
                    ),
                ),
                const SizedBox(width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const SignUpScreen()),
                      child: Text(tSignup.toUpperCase()),
                    ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}