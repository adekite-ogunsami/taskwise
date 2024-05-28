import 'package:flutter/material.dart';
import 'package:taskwise/src/utils/theme/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskwise/src/constants/sizes.dart';
import 'package:taskwise/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }): super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.all(tDefaultSize),
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(model.image), height: size.height * 0.45,),
            Column(
              children: [
                Text(model.title, style: GoogleFonts.dmSans(textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ))),
                SizedBox(height: 10), // Adjust the height as needed for spacing
                Text(model.subTitle,  style: GoogleFonts.rubik(
                  textStyle: const TextStyle(color: Colors.black87,)
                ), textAlign: TextAlign.center,),
              ],
            ),
            Text(model.counterText, style: GoogleFonts.dmSans(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )
            ),),
            SizedBox(height: 50.0,)
          ],
        )
    );
  }
}