import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            tLoginImage,
            height: size.height * 0.2,
          ),
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
      ],
    );
  }
}

