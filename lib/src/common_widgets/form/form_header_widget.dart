import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget ({Key? key,
  required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.imageColor,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  final String image,title,subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image), color: imageColor, height: size.height * imageHeight),
        SizedBox(height: heightBetween),
        Text(title, style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
        Text(subTitle, style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
      ],
    );
  }
}