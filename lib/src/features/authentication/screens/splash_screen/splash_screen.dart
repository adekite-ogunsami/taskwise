import 'package:flutter/material.dart';
import 'package:taskwise/src/constants/colors.dart';
import 'package:taskwise/src/constants/image_strings.dart';
import 'package:taskwise/src/constants/sizes.dart';
import 'package:taskwise/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage(tSplashTopIcon)),
            ),
            Positioned(
              top: 80,
              left: tDefaultSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName, style: Theme.of(context).textTheme.headline3,),
                  Text(tAppTagLine, style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              right: 20,
              bottom: 100,
              child: Image(image: AssetImage(tSplashImage)),
            ),
            Positioned(
              bottom: 40,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ],
        ),
    );
  }
  
}